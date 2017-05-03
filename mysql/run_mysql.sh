docker run  -d --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -v /data/devops/mysql/data:/var/lib/mysql -v /data/devops/mysql/logs/:/var/log/mysql mysql
#docker run -d --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -v /data/devops/mysql/data:/var/lib/mysql -v /data/devops/mysql/logs/:/var/log/mysql registry.cn-qingdao.aliyuncs.com/icommon/mysql:v5.7.18
