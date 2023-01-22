FROM node:18.13.0

RUN apt update && \
    yarn global add create-nuxt-app

RUN export NODE_OPTIONS=--openssl-legacy-provider