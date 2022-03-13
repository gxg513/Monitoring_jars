docker cp db_backup.sql db:/tmp/db_backup.sql
docker cp .my.cnf db:/root/.my.cnf 
docker exec db chmod 600 /root/.my.cnf
docker exec db mysqldump -h localhost -u root mydb < db_backup.sql
#execute this on docker: mysql -u root -p mydb < /tmp/db_backup.sql
