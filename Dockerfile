FROM tomcat
RUN apt update
RUN apt install java -y
EXPOSE 80




