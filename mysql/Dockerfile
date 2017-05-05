FROM registry.cn-qingdao.aliyuncs.com/icommon/centos7 


RUN yum -y install yum-utils wget \
  && yum remove -y mysql-libs \
  && yum remove -y mysql \
  && wget dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm \
  && yum -y localinstall mysql-community-release-el6-5.noarch.rpm \
  && yum-config-manager --disable mysql55-community \
  && yum-config-manager --disable mysql56-community \
  && yum-config-manager --enable mysql57-community-dmr \
  && yum -y install mysql-community-server

RUN mkdir /docker-entrypoint-initdb.d

VOLUME /var/lib/mysql

EXPOSE 3306

COPY docker-entrypoint.sh /usr/local/bin/

RUN chmod 777 /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

CMD ["mysqld"]
