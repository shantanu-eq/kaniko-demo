FROM amd64/tomcat:9.0.54-jdk8

ENV CATALINA_HOME /usr/local/tomcat
ENV JAVA_OPTS="-Xms512m -Xmx4G -XX:MaxPermSize=1024m -XX:-UseParallelGC -DcoreJMX=true -Duser.timezone=+05:30"

RUN ["ls"]

COPY ["/output/eQubeMI.war","$CATALINA_HOME/webapps/eQubeMI.war"]
RUN ["unzip","/usr/local/tomcat/webapps/eQubeMI.war","-d","/usr/local/tomcat/webapps/eQubeMI"]
RUN ["rm","/usr/local/tomcat/webapps/eQubeMI.war"]
