## Mark Lee 2019

## This script copies the NG Cash Recs backup from PRDB2 and refreshes into the PCopy database ##

<########################################################################################################
THIS VERSION AMENDED BY MAT ELKINGTON
15.04.2020
VERSION 2.0
Main Changes:
1. error-handling
2. loop for db drop
########################################################################################################>

clear-host

<####################################################################################>

### Variables ###

##Get Date in Specific Format
$date = get-date -Format "dd-MM-yyyy"
##Get Cash Recs Backup from Remote Folder
$BackupFileName = "NG_CashRecs_$date.bak"
##Get Cash Recs Backup from Local Folder
$DatabaseBackupFile = "S:\AppSuppBackups\NG_CashRecs_$date.bak"
##SQL Script Directory
$SQLScriptDirectory = Get-ChildItem -Path S:\Scripts\PCOPY_Refresh\SQLScripts -Filter *.sql
##Get current server name
$servername = "1021063-PRCOPY1\PRCOPY"
##Composer Database Name
$composerdbname = "NG_PCOPY_Composer"
##Get all backups in Directory for cleanup
$OldBackups = Get-ChildItem S:\AppSuppBackups -Recurse | ? {($_.extension -match "bak") -and ($_.name -notmatch "NG_CashRecs_$date")}

##Added by Mat E
$itr8tr = 0
#Remove-PSDrive -Name ProdBackup

<####################################################################################>

Start-Transcript S:\Scripts\PCOPY_Refresh\PCopyRefresh.log -IncludeInvocationHeader

<#amended by Mat E from here down#>
try
    {
    ##Connect to the NAS Backup folder
    New-PSDrive -Name ProdBackup -PSProvider FileSystem -Root "\\172.16.8.240\NG_CashRecs$"
    ##Change Directory to NAS Backup folder
    Push-Location ProdBackup:\ -ErrorAction Stop
    }
catch
    {
    Write-Output "UNABLE TO FIND PATH: ProdBackup"
    stop-transcript
    exit
    }

# Added by GD. Will remove BEFORE file copy and free up any space.
try
    {
    ##Cleanup backup files
    Write-Output "Clearing old backup files"
    foreach ($b in $OldBackups) 
        {
        Remove-Item $b.fullname -force
        }
    }
catch
    {
    write-output "FAILED TO REMOVE BACKUP"
    }


##Check if backup exists and copy CashRecs Backup from PRDB2
try
    {
    Write-Output "Checking to see if backup file exists in Prod"
    if ((Test-Path ProdBackup:\$BackupFileName) -eq $true) 
        {
        Write-Output "Copying $BackupFileName to S:\AppSuppBackups"
        Copy-Item ProdBackup:\$BackupFileName -Destination $DatabaseBackupFile -Force -ErrorAction Stop
        Write-Output "Copy Complete"
        }
    else
        {
        ##If backup does not exist, throw the error
        throw
        }
    }
catch
    {
    Write-Output "Unable to copy backup, check for existence of file or network issues"
    stop-transcript
    Exit 
    }

<####################################################################################>

##Revert back to original location
Pop-Location

##Import SQL Commands into PowerShell
Import-Module "C:\Program Files (x86)\Microsoft SQL Server\130\Tools\PowerShell\Modules\sqlps" -DisableNameChecking

##Change Directory to SQL Instance
 
set-location "SQLSERVER:\SQL\1021063-PRCOPY1\PRCOPY\Databases"

##Enumerate Composer Database Object
$composerdb = get-childitem | ? {$_.name -like "NG_PCOPY_Composer"}
$composerdb.Name

try
    {
    Write-Output "Set DB offline and drop it"
    ##Mat added this - 15.04.2020
    $initialisedb = "IF EXISTS(SELECT 1 FROM sys.databases WHERE [name] = '$($composerdb.Name)')
    SELECT 1;
    ELSE
    SELECT 0;
    GO"
    $dropthesqldboutput= Invoke-SQLcmd -ServerInstance $servername -Query ($initialisedb) -QueryTimeout 1200

        while($dropthesqldboutput[0] -eq 1 -and $itr8tr -lt 11)
            {
            ##amended by Mat E - 15.04.2020
            Write-Output "TRY: $itr8tr"
            
            $whatsthedealwiththedatabase = "Attempting to drop the database"
            $disconnectanddrop = "
            BEGIN TRY
            ALTER DATABASE $($composerdb.Name) SET OFFLINE WITH ROLLBACK IMMEDIATE;
            IF EXISTS(SELECT 1 FROM sys.databases WHERE state_desc = 'OFFLINE' AND [name] = '$($composerdb.Name)')
		    DROP DATABASE $($composerdb.Name);
            SELECT 0
            END TRY
            BEGIN CATCH
            SELECT 1;
            END CATCH;
            GO"

            $dropthesqldboutput = Invoke-SQLcmd -ServerInstance $servername -Query ($disconnectanddrop) -QueryTimeout 1200 -ErrorAction stop
            $disconnectanddrop

            $itr8tr = ($itr8tr + 1)
            start-sleep -s 300
            }
    Write-Output "DB dropped successfully"
    }
catch
    {
    write-output "FAILED TO DROP DATABASE"
    Stop-Transcript
    Exit
    }

##Restore from Backup
try
    {
    Write-Output "Restoring DB from $DatabaseBackupFile"
    Restore-SqlDatabase -Database $($composerdb.Name) -BackupFile $DatabaseBackupFile -ServerInstance $servername -ReplaceDatabase -ErrorAction Stop
    Write-Output "DB restore complete"
    }
catch
    {
    write-output "FAILED TO RESTORE DATABASE"
    Stop-Transcript
    Exit
    }

Wait-Event -Timeout 5

<####################################################################################>

##Run SQL Files in SQLScriptDirectory
try
    {
    foreach ($i in $SQLScriptDirectory) 
        {
        Write-Output "Running Script: $($i.name)"
        Invoke-Sqlcmd -ServerInstance $servername -InputFile $i.fullname -Database $composerdbname
        }
    }
catch
    {
    write-output "FAILED TO RUN SCRIPTS"
    }

try
    {
    ##Cleanup backup files
    Write-Output "Clearing old backup files"
    foreach ($b in $OldBackups) 
        {
        Remove-Item $b.fullname -force
        }
    }
catch
    {
    write-output "FAILED TO REMOVE BACKUP"
    }

<####################################################################################>

Stop-Transcript