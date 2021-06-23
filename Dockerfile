FROM circleci/node:14.16-browsers

## Update
RUN sudo apt-get update

## Install Deps
RUN sudo apt-get -y install \
    bash \
    jq \
    yarn \
    openssh-client \
    python3 \
    python3-pip \
    tar \
    wget \
    libxml2-utils

## AWS CLI Tools
RUN pip3 install awscli;


## NPM Tools
RUN yarn global add eslint browserslist-useragent-regexp

## Clean UP
RUN rm -rf /var/cache/apk/*

CMD bash
