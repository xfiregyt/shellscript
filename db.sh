#! /bin/bash
db_user=root
db_pwd=pwd
db_database=mydb
if [ -f "db.sql" ]; then
	mysql -u$db_user -p$db_pwd $db_database < db.sql &> dbresult
else
	echo "Not found db.sql file in this path!"
fi
exit 0
