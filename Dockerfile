FROM salesforce/cli:2.17.5-full

RUN apt update && apt -y install libxml2-utils

RUN echo 'y' | sfdx plugins:install sfdx-git-delta
