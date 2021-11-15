FROM amd64/tomcat:9.0.54-jdk8

ENV CATALINA_HOME /usr/local/tomcat
ENV JAVA_OPTS="-Xms512m -Xmx4G -XX:MaxPermSize=1024m -XX:-UseParallelGC -DcoreJMX=true -Duser.timezone=+05:30"
