from jenkins/jenkins:lts

# Distributed Builds plugins
RUN /usr/local/bin/install-plugins.sh ssh-slaves

# install Notifications and Publishing plugins
RUN /usr/local/bin/install-plugins.sh email-ext && \
    /usr/local/bin/install-plugins.sh mailer && \
   /usr/local/bin/install-plugins.sh slack

# Artifacts
RUN /usr/local/bin/install-plugins.sh htmlpublisher

# UI
RUN /usr/local/bin/install-plugins.sh greenballs && \
    /usr/local/bin/install-plugins.sh simple-theme-plugin && \
    /usr/local/bin/install-plugins.sh blueocean

# Scaling
RUN /usr/local/bin/install-plugins.sh kubernetes

# @TODO figure a way around this hack, we do not want this escalation
USER root

# install Maven
RUN apt-get update && apt-get install -y maven
USER jenkins 
