FROM tomcat:jre8-alpine

COPY ./project-1.0-RAMA.war  /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]