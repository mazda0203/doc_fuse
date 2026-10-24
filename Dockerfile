FROM ubuntu:20.04
RUN apt update
RUN apt install tomcat9 -y
EXPOSE 8080
RUN apt install default-jdk -y
RUN apt install maven -y
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cp /boxfuse-sample-java-war-hello/* /
RUN mvn package
RUN cp hello-1.0.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]