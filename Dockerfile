FROM node:20-alpine3.20
WORKDIR /app
COPY ./package.json .
RUN yarn
COPY . .
RUN yarn build
CMD yarn start
