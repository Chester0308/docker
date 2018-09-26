#!/bin/sh
#| "${mysql[@]}"
echo "CREATE DATABASE IF NOT EXISTS \`sample\` ;" | mysql -u ${MYSQL_ROOT_USER} -p${MYSQL_ROOT_PASSWORD} -P 33061
echo "GRANT ALL ON \`sample\`.* TO '"$MYSQL_USER"'@'%' ;" | mysql -u ${MYSQL_ROOT_USER} -p${MYSQL_ROOT_PASSWORD} -P 33061
echo 'FLUSH PRIVILEGES ;' | mysql -u ${MYSQL_ROOT_USER} -p${MYSQL_ROOT_PASSWORD} -P 33061

mysql -u ${MYSQL_ROOT_USER} -p${MYSQL_ROOT_PASSWORD} -P 33061 sample < /docker-entrypoint-initdb.d/sample.sql_
