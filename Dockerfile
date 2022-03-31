FROM mraodragon/suse-mohist
VOLUME /mnt/mc
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY mohist.jar mohist.jar
EXPOSE 25565
ENTRYPOINT exec java $JAVA_OPTS -jar susemohist.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar susemohist.jar
