FROM rundeck/rundeck:4.8.0

MAINTAINER NAME mjmcconnell.dev@gmail.com

LABEL name="Rundeck" \
      maintainer="mjmcconnell.dev@gmail.com" \
      version="0.1.0" \
      release="0.1.0" \
      summary="Rundeck" \
      description="Custom rundeck image used for the playground"

ARG user=1001

USER 0

ADD rundeck/config/jaas-loginmodule.conf  /home/rundeck/server/config/jaas-loginmodule.conf
ADD rundeck/config/log4j2.properties      /home/rundeck/server/config/log4j2.properties
ADD rundeck/config/realm.properties       /home/rundeck/server/config/realm.properties
ADD rundeck/config/ssl.properties         /home/rundeck/server/config/ssl.properties

# Install packages here

USER ${user}
