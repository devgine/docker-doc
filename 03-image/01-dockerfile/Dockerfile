FROM node:20.13.1-alpine3.19

ARG RELEASE_NAME=localhost

ENV IMAGE_CUSTOM_ENV test

WORKDIR /app

ADD https://github.com/devgine/selfsigned-certificate/blob/main/README.md README.md

# Install dependecies
COPY package.json package.json
RUN yarn install

COPY save/ save
COPY pong.js pong.js

# Entrypoint
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint
ENTRYPOINT ["docker-entrypoint"]

VOLUME ["/app/save"]

EXPOSE 80

# Healthcheck
RUN apk add curl
HEALTHCHECK --interval=5s --timeout=3s --retries=3 CMD curl -f localhost/ping || exit

# User
RUN addgroup --system --gid 1010 myuser
RUN adduser --system --uid 1010 --ingroup myuser myuser
RUN chown -R myuser:myuser /app
USER myuser

CMD ["yarn", "start"]
