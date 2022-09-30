FROM openjdk:18-buster

ADD run.sh /

ADD server.properties /

CMD /run.sh
