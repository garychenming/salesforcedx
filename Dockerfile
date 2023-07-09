FROM salesforce/salesforcedx:latest-rc-full

RUN apt update && apt -y install libxml2-utils

RUN echo 'y' | sfdx plugins:install sfdx-git-delta
