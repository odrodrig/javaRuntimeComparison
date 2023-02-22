FROM icr.io/appcafe/websphere-liberty:kernel-java17-openj9-ubi

COPY --chown=1001:0  guide-maven-intro/finish/target/ServletSample.war /config/dropins/
COPY --chown=1001:0  guide-maven-intro/finish/target/liberty/wlp/usr/servers/guideServer/server.xml /config/

ARG VERBOSE=true

RUN configure.sh