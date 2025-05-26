FROM tomcat:9.0
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/lab3a2-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080


#docker build -t sample-app .
#docker run -d -p 8097:8080 sample-app