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

COPY docker-entrypoint.sh /root/entrypoint.sh

RUN useradd mysql

RUN chmod +x /root/entrypoint.sh && chown mysql.mysql /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]

EXPOSE 3306

CMD ["mysqld"]
