# https://hub.docker.com/repositories/garychenming
# https://hub.docker.com/r/salesforce/cli/tags
FROM salesforce/cli:2.132.7-full

RUN apt update && apt -y install libxml2-utils

RUN echo 'y' | sfdx plugins:install sfdx-git-delta

RUN echo 'y' | sfdx plugins:install force-source-clean

# docker build --tag garychenming/salesforcedx . // useless
# docker push garychenming/salesforcedx // useless


# local
# docker buildx build --platform linux/amd64,linux/arm64 -t garychenming/salesforcedx . --push

# remote
# docker pull garychenming/salesforcedx

