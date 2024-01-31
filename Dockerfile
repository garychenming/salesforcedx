# https://hub.docker.com/repositories/garychenming
# https://hub.docker.com/r/salesforce/cli/tags
FROM salesforce/cli:2.27.6-full

RUN apt update && apt -y install libxml2-utils

RUN echo 'y' | sfdx plugins:install sfdx-git-delta

# local 
# docker build --tag garychenming/salesforcedx .
# docker push garychenming/salesforcedx

# remote
# docker pull garychenming/salesforcedx

