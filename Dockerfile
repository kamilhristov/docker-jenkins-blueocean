FROM jenkins:2.60.1-alpine

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

USER root
RUN apk -U add docker

RUN /usr/local/bin/install-plugins.sh \
      pubsub-light:1.11 \
      github-branch-source:2.2.0 \
      workflow-job \
      blueocean

USER jenkins
