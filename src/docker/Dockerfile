FROM node:lts-alpine AS base

WORKDIR /app
RUN apk add bash
EXPOSE 8080

FROM base as dev

COPY ./docker/dev-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/dev-entrypoint.sh
ENTRYPOINT ["/usr/local/bin/dev-entrypoint.sh"]
CMD ["npm", "run", "start:dev"]

