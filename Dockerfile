FROM tomcat
RUN apt update
RUN apt install java -y
RUN apt install maven
git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git

EXPOSE 80




