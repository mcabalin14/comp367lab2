FROM tomcat:10.1-jdk17
COPY target/michael_lab2.war /usr/local/tomcat/webapps/michael_lab2.war
EXPOSE 8090
CMD ["catalina.sh", "run"]