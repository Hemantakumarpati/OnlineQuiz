FROM openjdk:8-jdk
MAINTAINER hemantakumarpati
ENV JAVA_VER 8
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
COPY . /var/lib/jenkins/workspace/ResultProcessingSystem/onlinequiz.war
WORKDIR /var/lib/jenkins/workspace/ResultProcessingSystem/target/
ENTRYPOINT "java", "-war", "/var/lib/jenkins/workspace/ResultProcessingSystem/target/onlinequiz.war"
EXPOSE 8000
CMD "/usr/bin/java", "-jar", "onlinequiz.war"
