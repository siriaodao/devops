# v5.7.18
docker run -d -u mysql --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -v /data/devops/mysql/data:/var/lib/mysql registry.cn-qingdao.aliyuncs.com/icommon/mysql:v5.7.18

# MYSQL_ROOT_PASSWORD
# MYSQL_DATABASE
# MYSQL_USER
# MYSQL_PASSWORD
# MYSQL_ALLOW_EMPTY_PASSWORD
# MYSQL_RANDOM_ROOT_PASSWORD
# MYSQL_ONETIME_PASSWORD
# MYSQL_ROOT_HOST

$ docker run --name some-mysql -e MYSQL_ROOT_PASSWORD_FILE=/run/secrets/mysql-root -d mysql:tag

# v5.6
docker run -d --name mysql -p 3306:3306  -v /data/devops/mysql/data:/var/lib/mysql  registry.cn-qingdao.aliyuncs.com/icommon/mysql:v5.6
