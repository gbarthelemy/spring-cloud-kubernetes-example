FROM adoptopenjdk:11-jre-hotspot
VOLUME /tmp
COPY target/k8s-spring-cloud-dummy-service-*.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=9999 -jar /app.jar
