# v5.7.18
docker run -d -u mysql --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -v /data/devops/mysql/data:/var/lib/mysql registry.cn-qingdao.aliyuncs.com/icommon/mysql:v5.7.18
# v5.6
docker run -d --name mysql -p 3306:3306  -v /data/devops/mysql/data:/var/lib/mysql  registry.cn-qingdao.aliyuncs.com/icommon/mysql:v5.6
