FROM jenkins:2.60.1

USER root

RUN curl -SL https://get.docker.com/builds/Linux/x86_64/docker-17.03.1-ce.tgz \
    | tar -zx --strip-components=1 -C /usr/local/bin \
    && chmod +x /usr/local/bin/docker

USER jenkins
 
ENV PATH="/usr/local/docker:$PATH"
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

RUN /usr/local/bin/install-plugins.sh \
      github \
      github-branch-source \
      github-organization-folder \
      pubsub-light \
      pipeline-graph-analysis \
      pipeline-model-extensions \
      pipeline-model-definition \
      pipeline-model-api \
      pipeline-input-step \
      pipeline-stage-step \
      workflow-api \
      workflow-cps \
      workflow-job \
      workflow-support \
      workflow-step-api \
      workflow-scm-step \
      blueocean-rest-impl \
      blueocean-pipeline-editor \
      blueocean-git-pipeline \
      blueocean-config \
      blueocean-autofavorite \
      blueocean-personalization \
      blueocean-rest \
      blueocean-i18n \
      blueocean-display-url \
      blueocean-events \
      blueocean-commons \
      blueocean-web \
      blueocean-pipeline-api-impl \
      blueocean-dashboard \
      blueocean-jwt \
      blueocean-github-pipeline \
      blueocean \
