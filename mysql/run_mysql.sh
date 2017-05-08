# v5.7.18
docker run -d --privileged -u mysql --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -v /data/devops/mysql/data:/var/lib/mysql registry.cn-qingdao.aliyuncs.com/icommon/mysql:v5.7.18


# MYSQL_ROOT_HOST
# MYSQL_ROOT_PASSWORD
# MYSQL_DATABASE
# MYSQL_USER
# MYSQL_PASSWORD
# MYSQL_ALLOW_EMPTY_PASSWORD
# MYSQL_RANDOM_ROOT_PASSWORD
# MYSQL_ONETIME_PASSWORD


在CentOS7中运行NodeJs的容器，发现挂载的本地目录在容器中没有执行权限，经过各种验证和Google搜索，找到了问题的原因，这里做一下记录。原因是CentOS7中的安全模块selinux把权限禁掉了，至少有以下三种方式解决挂载的目录没有权限的问题：

1，在运行容器的时候，给容器加特权：
示例：docker run -i -t --privileged=true -v /home/docs:/src waterchestnut/nodejs:0.12.0

2，临时关闭selinux：
示例：su -c "setenforce 0"
之后执行：docker run -i -t -v /home/docs:/src waterchestnut/nodejs:0.12.0
注意：之后要记得重新开启selinux，命令：su -c "setenforce 1"

3，添加selinux规则，将要挂载的目录添加到白名单：
示例：chcon -Rt svirt_sandbox_file_t /home/docs
$ docker run --name some-mysql -e MYSQL_ROOT_PASSWORD_FILE=/run/secrets/mysql-root -d mysql:tag


# v5.6
docker run -d --privileged -u mysql --name mysql -p 3306:3306  -v /data/devops/mysql/data:/var/lib/mysql  registry.cn-qingdao.aliyuncs.com/icommon/mysql:v5.6
