FROM thothbot/alpine-jre8:latest
ENV JAVA_OPTS="-Xms1024M -Xmx2048M -XX:MaxPermSize=2048M -XX:MaxHeapSize=2048M"
RUN pwd
COPY ./target/myproject-0.0.1-SNAPSHOT.jar /myproject-0.0.1-SNAPSHOT.jar
#ADD ./run.sh /run.sh
#RUN chmod a+x /run.sh
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /myproject-0.0.1-SNAPSHOT.jar" ]
EXPOSE 8080:8080
