FROM node:20-alpine3.20
WORKDIR /app
ENV HOST=0.0.0.0 \
    PORT=1337 \
    APP_KEYS="89uw5g9w20g9205,095w2g90j20j909j2" \
    API_TOKEN_SALT=w09u5g0wg9jgsngekonognwsngo \
    ADMIN_JWT_SECRET=tobeosijrgjw0ew90jvrmodified \
    TRANSFER_TOKEN_SALT=e20910498qwjh9g0sjtoinxzsb9tiw \
    JWT_SECRET=tj0w9jg0j9e4ojgosgzse90a9w30j39r
COPY ./package.json .
RUN yarn install 
COPY . .
RUN yarn build
CMD ["yarn", "start"]
