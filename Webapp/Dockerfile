# 以Tomcat为基础镜像
FROM tomcat:9
# 将本地的War包复制到Tomcat的webapps目录下
COPY ROOT.war /usr/local/tomcat/webapps/
# 暴露Tomcat的默认端口8080
EXPOSE 8080
