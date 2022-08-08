PRINT 'Updating Refcode CBIS_SERVICE_URL'
update infoframe_refcode_value set code_value = 'http://nnn.nnn.nnn.nnn:8080/cbis-console' where infoframe_reference_code_id = 990 and infoframe_refcode_value_id = 1688
update infoframe_refcode_value set code_value = 'http://172.16.8.73:8180/cbis-pcopy/webservices/' where infoframe_reference_code_id = 824 and infoframe_refcode_value_id = 1728	
update infoframe_refcode_value set code_value = 'http://172.16.8.73:8180/cbis-pcopy/webservices/' where infoframe_reference_code_id = 824 and infoframe_refcode_value_id = 1729	
update infoframe_refcode_value set code_value = 'http://172.16.8.73:8180/cbis-pcopy/webservices/' where infoframe_reference_code_id = 824 and infoframe_refcode_value_id = 1691	
update infoframe_refcode_value set code_value = 'http://nnn.nnn.nnn.nnn:8080/composer-ui/index-pb.jsp?#' where infoframe_reference_code_id = 824 and infoframe_refcode_value_id = 374928	
update infoframe_refcode_value set code_value = 'http://172.16.8.73:8180/cbis-pcopy/webservices/' where infoframe_reference_code_id = 824 and infoframe_refcode_value_id = 374350 --RTI_BATCH
AND infoframe_refcode_value_id IN (
375964,
375965,
375966,
375967,
375968,
375969,
375970,
375971,
375972,
375973,
377893
)
PRINT 'Refcode CBIS_SERVICE_URL  updated!'
go







PRINT 'Updating Refcode DEF_PROCESS_EXPT_DIR'
update infoframe_refcode_value set code_value =  'P:\' where infoframe_refcode_value_id = 375964
update infoframe_refcode_value set code_value =  'P:\' where infoframe_refcode_value_id = 375965
update infoframe_refcode_value set code_value =  'P:\' where infoframe_refcode_value_id = 375966
update infoframe_refcode_value set code_value =  'P:\' where infoframe_refcode_value_id = 375967
update infoframe_refcode_value set code_value =  'P:\' where infoframe_refcode_value_id = 375968
update infoframe_refcode_value set code_value =  'P:\' where infoframe_refcode_value_id = 375969
update infoframe_refcode_value set code_value =  'P:\' where infoframe_refcode_value_id = 375970
update infoframe_refcode_value set code_value =  'P:\' where infoframe_refcode_value_id = 375971
update infoframe_refcode_value set code_value =  'P:\' where infoframe_refcode_value_id = 375972
update infoframe_refcode_value set code_value =  'P:\' where infoframe_refcode_value_id = 375973
update infoframe_refcode_value set code_value =  'P:\' where infoframe_refcode_value_id = 377893
update infoframe_refcode_value set code_value =  'P:\' where infoframe_refcode_value_id = 378206
update infoframe_refcode_value set code_value =  'P:\' where infoframe_refcode_value_id = 378207

PRINT 'Refcode DEF_PROCESS_EXPT_DIR updated!'
go


PRINT 'Updating all trading methods to non-Prod values'
update order_trading_method set order_file_outputdir_location = 'P:\emx' where order_trading_method_code = 'E'
update order_trading_method set order_file_outputdir_location = 'P:\' where order_trading_method_code = 'F'
update order_trading_method set order_file_outputdir_location = 'P:\export\fund_orders' where order_trading_method_code = 'J'
PRINT 'All trading methods updated to non-Prod values'
go
