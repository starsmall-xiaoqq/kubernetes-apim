#!/bin/bash


echo ">> start of creating database"

echo "create user"
mysql -h wso2testdb.c4imsdilbmbl.ap-northeast-1.rds.amazonaws.com -uadmin -pwso2test < /mysqlclient/user.sql
echo "create analytics database"
mysql -h wso2testdb.c4imsdilbmbl.ap-northeast-1.rds.amazonaws.com -uadmin -pwso2test < /mysqlclient/mysql_analytics.sql
echo "create apim database"
mysql -h wso2testdb.c4imsdilbmbl.ap-northeast-1.rds.amazonaws.com -uadmin -pwso2test < /mysqlclient/mysql_apim.sql
echo "create shared database"
mysql -h wso2testdb.c4imsdilbmbl.ap-northeast-1.rds.amazonaws.com -uadmin -pwso2test < /mysqlclient/mysql_shared.sql

echo "end of creating databse <<"

