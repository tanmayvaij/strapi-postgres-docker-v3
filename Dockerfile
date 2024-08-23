FROM node:20-alpine3.20
WORKDIR /srv/app
COPY  ./strapi-cms/package.json .
RUN yarn
COPY ./strapi-cms .
RUN yarn build
CMD yarn start
