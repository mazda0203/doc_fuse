FROM ubuntu:20.04
RUN apt update
RUN apt install tomcat -y
EXPOSE 8080
RUN apt install java -y
RUN apt install maven -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn package
RUN cp hello-1.0.war /var/lib/tomcat9/webapps/
