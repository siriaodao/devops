docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -v /data/mysql/data:/var/lib/mysql -v /data/mysql/logs/:/var/log/mysql registry.cn-qingdao.aliyuncs.com/icommon/mysql:v5.7.16
