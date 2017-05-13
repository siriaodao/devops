# devops

测试系统：centos-7.3 
内核：3.10.0-514.16.1.el7.x86_64
软件版本：
jdk: 1.8.0_131
git : 1.8.3.1
maven: 3.0.5
docker: 1.12.6
jenkins: 2.46.2
sonarqube: 6.3.1
mysql:5.7.18

# 构建测试项目hello-world
docker run -it --rm --name maven-hello-world -v /root/docker/maven-hello-world:/usr/src/maven-hello-world -w /usr/src/maven-hello-world maven mvn -B archetype:generate -DgroupId=com.aliyun.demo -DartifactId=hello-world -DarchetypeArtifactId=maven-archetype-webapp

# hello-world项目提交到git仓库

# 运行jenkins和sonarqube、mysql
docker-compose up -d

# 登录jenkins、选择安装所有插件及手选安装ssh plugin/SonarQube Scanner for Jenkins插件
1>、jenkins启动密码 cat /root/docker/jenkins/secrets/initialAdminPassword 
2>、选择安装所有插件

3>、手选安装ssh插件，系统管理->管理插件->可选安装->ssh plugin/SonarQube Scanner for Jenkins(打勾)->直接安装 
# 配置ssh远程客户端，系统管理->系统设置->SSH remote hosts->SSH sites->增加，填写相关信息即可

# 安装sonarqube scenner，系统管理->Global Tool Configuration->SonarQube Scenner->SonarQube Scenner安装

# 配置sonarqube，系统管理->系统设置->SonarQube servers->Add SonarQube,其中红框Server authentication token在sonarqub服务端生成

