# https://hub.docker.com/repositories/garychenming
# https://hub.docker.com/r/salesforce/cli/tags
FROM salesforce/cli:2.72.0-full

RUN apt update && apt -y install libxml2-utils

RUN echo 'y' | sfdx plugins:install sfdx-git-delta

RUN echo 'y' | sfdx plugins:install force-source-clean

# local
# docker build --tag garychenming/salesforcedx .
# docker push garychenming/salesforcedx

# remote
# docker pull garychenming/salesforcedx

