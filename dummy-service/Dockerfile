FROM adoptopenjdk:11-jre-hotspot
VOLUME /tmp
COPY target/spring-cloud-k8s-dummy-service-*.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=9999 -jar /app.jar
