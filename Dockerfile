FROM tomcat
RUN apt update
RUN apt install java -y
RUN apt install maven
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn package
CMD cp hello-1.0.war /var/lib/tomcat9/webapps/
EXPOSE 8080