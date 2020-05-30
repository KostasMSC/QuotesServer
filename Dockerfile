FROM ubuntu:18.04

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install default-jre

EXPOSE 10001 20001

ENV JAR QuotesServer-0.0.1-SNAPSHOT-jar-with-dependencies.jar

ADD /target/${JAR} ${JAR}

CMD exec java -jar ${JAR}
