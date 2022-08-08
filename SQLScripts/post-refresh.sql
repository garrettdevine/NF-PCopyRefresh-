EXEC sp_change_users_login 'Auto_Fix', 'cbis_internal'
EXEC sp_addrolemember 'db_datareader', 'cbis_internal'
EXEC sp_addrolemember 'db_datawriter', 'cbis_internal'
EXEC sp_addrolemember 'db_ddladmin', 'cbis_internal'
EXEC sp_addrolemember 'ReadWriteGroup', 'cbis_internal'


--User creation code start --
EXEC wmd_add_composer_login 'hchulupc', 'Henry Chulu', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'hchulupc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'upuhyhcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO
--User creation code end --



--User creation code start --
EXEC wmd_add_composer_login 'redgepc', 'Rachael Edge', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'redgepc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'erqtrcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO
--User creation code end --

EXEC wmd_add_composer_login 'jpearcepc', 'Jake Pearce', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'jpearcepc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'wcrneprcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO



EXEC wmd_add_composer_login 'disbursepc', 'disbursement server', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'disbursepc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'qvfohefrcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO


GO

EXEC wmd_add_composer_login 'estephenpc', 'Emma Stephens', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'estephenpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'rfgrcuracp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO

EXEC wmd_add_composer_login 'rtilburypc', 'Reilly Tilbury', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'rtilburypc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'egvyohelcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO

EXEC wmd_add_composer_login 'akaypc', 'Alex Kay', NULL, 'Y', 'dev', 'all_perms', 'YES'
declare @dbusername varchar(30) = 'akaypc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'nxnlcp',
@encrypted_password     varchar(30) = ''

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')
GO

EXEC wmd_add_composer_login 'rlloydpc', 'rachel lloyd', NULL, 'Y', 'dev', 'all_perms', 'YES'
declare @dbusername varchar(30) = 'rlloydpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'eyyblqcp',
@encrypted_password     varchar(30) = ''

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

					 GO


					 EXEC wmd_add_composer_login 'dreekspc', 'Darren Reeks', NULL, 'Y', 'dev', 'all_perms', 'YES'
declare @dbusername varchar(30) = 'dreekspc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'errxfcp',
@encrypted_password     varchar(30) = ''

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')


					 GO

select * from sec_user

					 EXEC wmd_add_composer_login 'cmackenziepc', 'Connor MacKenzie', NULL, 'Y', 'dev', 'all_perms', 'YES'
declare @dbusername varchar(30) = 'cmackenziepc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'pznpxramvr',
@encrypted_password     varchar(30) = ''

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')


					 GO

				 EXEC wmd_add_composer_login 'hhassanipc', 'Hamid Hassani', NULL, 'Y', 'dev', 'all_perms', 'YES'
declare @dbusername varchar(30) = 'hhassanipc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'uunffnavcp',
@encrypted_password     varchar(30) = ''

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')


					 GO


				 EXEC wmd_add_composer_login 'jcooperpc', 'Jonathan Cooper', NULL, 'Y', 'dev', 'all_perms', 'YES'
declare @dbusername varchar(30) = 'jcooperpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'wpbbcrecp',
@encrypted_password     varchar(30) = ''

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')


					 GO

EXEC wmd_add_composer_login 'appsupppc', 'application support', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'appsupppc',
@password varchar(30) = 'Password2',
@encrypted_username   varchar(30) = 'nccfhcccp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')



Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO


EXEC wmd_add_composer_login 'jjonespc', 'Josh Jones', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'jjonespc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'wwbarfcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO

EXEC wmd_add_composer_login 'twebsterpc', 'Tor Webster', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'twebsterpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'gjrofgrecp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO



EXEC wmd_add_composer_login 'aatkinsopc', 'Alison Atkinson', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'aatkinsopc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'nngxvafbcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO


EXEC wmd_add_composer_login 'nsmithpc', 'Nick Smith', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'nsmithpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'afzvgucp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO



----------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'dfieldpc', 'Dave Field', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'dfieldpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'qsvryqcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO


----------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'abahramipc', 'Ami Bahrami', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'abahramipc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'nonuenzvcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')
GO

----------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'bgilespc', 'Ben Giles', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'bgilespc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'otvyrfcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO

--ADDED UNDER IT 87942 --------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'ipearcepc', 'Iva Pearce', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'ipearcepc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'vcrneprcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO


--ADDED UNDER IT 90369 --------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'sjoplingpc', 'Sian Jopling', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'sjoplingpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'fwbcyvatcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO

--ADDED UNDER IT 90501 --------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'lharriespc', 'Lukas Harries', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'lharriespc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'yuneevrfcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO



--ADDED UNDER IT 92393--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'bgilespc', 'Ben Giles', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'bgilespc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'otvyrfcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO


--ADDED UNDER IT 94308--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'sthomaspc', 'Sarah Thomas', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'sthomaspc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'fgubznfcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO


--ADDED UNDER IT 95027--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'gsampsonpc', 'Gabriela Sampson', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'gsampsonpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'tfnzcfbacp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO

--ADDED UNDER IT 95465--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'hcameronpc', 'Helen Cameron', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'hcameronpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'upnzrebacp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO

--ADDED UNDER IT 95466--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'mfieldpc', 'Martha Field', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'mfieldpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'zsvryqcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO

--ADDED UNDER IT 95951--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'njonespc', 'Nick Jones', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'njonespc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'awbarfcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO

--ADDED UNDER IT 96640--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'ngeorgepp', 'Noel George', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'ngeorgepp',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'atrbetrcc',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO

--ADDED UNDER IT 99096--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'bmizhapc', 'Brandon Mizha', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'bmizhapc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'ozvmuncp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO


--ADDED UNDER IT 99378--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'asballpc', 'Ash Ball', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'asballpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'nfonyycp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO


--ADDED UNDER IT 99539--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'craffertpc', 'Connor Rafferty', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'craffertpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'penssregcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO



--ADDED UNDER IT 99779--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'jraffertpc', 'Janene Rafferty', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'jraffertpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'wenssregcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')
GO

--ADDED UNDER IT 99912--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'astroudpc', 'Alexandra Stroud', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'astroudpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'nfgebhqcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')
GO


--ADDED UNDER IT 98693--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'dtomlinspc', 'Dan Tomlinson', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'dtomlinspc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'qgbzyvafcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')
GO

--ADDED UNDER IT 102001--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'jyellandpc', 'James Yelland', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'jyellandpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'wlryynaqcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')
GO

--ADDED UNDER IT 103349--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'ihofmeyrpc', 'Ian Hofmeyr', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'ihofmeyrpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'vubszrlecp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')
GO


--ADDED UNDER IT 103567--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'sgravespc', 'Scott Graves', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'sgravespc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'ftenirfcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')
GO

--ADDED UNDER IT 103589--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'nwheelerpc', 'Nicole Wheeler', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'nwheelerpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'ajurryrecp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')
GO

--ADDED UNDER IT 104078--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'jaldouspc', 'Jack Aldous', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'jaldouspc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'wnyqbhfcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')
GO

--ADDED UNDER IT 104135--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'jdeightopc', 'Jon Deighton', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'jdeightopc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'wqrvtugbcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')
GO

--ADDED UNDER IT 105512--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'jjonespc', 'Jon Jones', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'jjonespc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'wwbarfcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO

--ADDED UNDER IT 105512--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'kdebeerspc', 'Katrina Debeers', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'kdebeerspc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'xqrorrefcp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO

--ADDED UNDER IT 106267--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'dtaylorpc', 'Duncan Taylor', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'dtaylorpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'qgnlybecp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

GO

--ADDED UNDER IT 106965--------------------------------------------------------------------------------------------------------------------------

EXEC wmd_add_composer_login 'jsmithpc', 'Joe Smith', NULL, 'Y', 'dev', 'all_perms', 'YES'

declare @dbusername varchar(30) = 'jsmithpc',
@password varchar(30) = 'Password1',
@encrypted_username   varchar(30) = 'wfzvgucp',
@encrypted_password     varchar(30) = '',
@group_id INT,
@user_id INT

            EXEC sp_out_rot13 @dbusername
                            , @encrypted_username output
            exec sp_out_rot13 @password  
                            , @encrypted_password output
            SELECT @encrypted_username = rtrim(@encrypted_username)
                ,  @encrypted_password = rtrim(@encrypted_password)
    
            PRINT 'Adding encrypted login ('+@encrypted_username+') for user: '+@dbusername
                     PRINT '('+@encrypted_password+')'
                     EXEC ('ALTER LOGIN '+@encrypted_username+' WITH PASSWORD='''+@encrypted_password+'''')

Select @group_id  = (select group_id from sec_group where user_id = (select user_id from sec_user where db_name = 'sys_admin'))

Select @user_id =  (select user_id from sec_user where db_name = +@dbusername)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')

Select @user_id =  (select user_id from sec_user where db_name = @encrypted_username)

INSERT INTO sec_group
values
(@group_id,@user_id,'Y','N')
GO
/**************UPDATE SHARED PROCESS DIRECTORY**************************/


---------DEF_PROCESS_EXPT_DIR

update infoframe_refcode_value
set code_value = 'P:\'
where infoframe_reference_code_id = (select infoframe_reference_code_id from infoframe_reference_code where mnemonic = 'DEF_PROCESS_EXPT_DIR')

SELECT * FROM infoframe_refcode_value
where infoframe_reference_code_id = (select infoframe_reference_code_id from infoframe_reference_code where mnemonic = 'DEF_PROCESS_EXPT_DIR')

SELECT * FROM infoframe_reference_code where infoframe_reference_code_id = 582


-----SPROCESS_OUTPUT_DIR 

update infoframe_refcode_value
set code_value =  'P:\'
where infoframe_reference_code_id = (select infoframe_reference_code_id from infoframe_reference_code where mnemonic = 'SPROCESS_OUTPUT_DIR')

SELECT * FROM infoframe_refcode_value
where infoframe_reference_code_id = (select infoframe_reference_code_id from infoframe_reference_code where mnemonic = 'SPROCESS_OUTPUT_DIR')

GO

/******************UPDATE DISBURSEMENT RUNNING REF CODE********************/

update irv
set irv.code_value = 'N'
from infoframe_refcode_value irv
join infoframe_reference_code irc on irv.infoframe_reference_code_id = irc.infoframe_reference_code_id
where irc.mnemonic = 'DISB_SERV_RUNNING'

select * from infoframe_refcode_value irv
join infoframe_reference_code irc on irv.infoframe_reference_code_id = irc.infoframe_reference_code_id
where irc.mnemonic = 'DISB_SERV_RUNNING'

GO

/******************CONTRACT NOTE VERFIFICATION*************************************/
DECLARE

@countvalues INT,
@row_id INT,
@infoframe_refcode_value_id INT,
@code_value VARCHAR (10),
@code_value2 VARCHAR (10)



CREATE Table #infoframe_ref_value
(row_id INT IDENTITY,
infoframe_reference_code_id integer null,
qualifier_value integer
)


INSERT into #infoframe_ref_value
(infoframe_reference_code_id, qualifier_value)
select infoframe_reference_code_id,qualifier_value 

from infoframe_refcode_value
where infoframe_reference_code_id = 842

/*set counter*/
Select @countvalues = max(row_id) from #infoframe_ref_value

/*Start with record one*/
Set @row_id = 1
set @code_value = (select user_id from sec_user where db_name = 'estephenpc')
set @code_value2 = (select user_id from sec_user where db_name = 'akaypc')

while @row_id <=@countvalues
begin
exec sp_generate_unique_key "if_rc_value_id", @infoframe_refcode_value_id output

INSERT INTO infoframe_refcode_value
(infoframe_refcode_value_id,infoframe_reference_code_id,qualifier_value,code_value)
select @infoframe_refcode_value_id,iv.infoframe_reference_code_id,iv.qualifier_value, @code_value
from #infoframe_ref_value iv
where iv.row_id = @row_id

exec sp_generate_unique_key "if_rc_value_id", @infoframe_refcode_value_id output

INSERT INTO infoframe_refcode_value
(infoframe_refcode_value_id,infoframe_reference_code_id,qualifier_value,code_value)
select @infoframe_refcode_value_id,iv.infoframe_reference_code_id,iv.qualifier_value, @code_value2
from #infoframe_ref_value iv
where iv.row_id = @row_id

SET @row_id  =@row_id+1
end

drop table #infoframe_ref_value

GO