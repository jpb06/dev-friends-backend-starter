FROM node:16-alpine 

WORKDIR /app
COPY . .

RUN yarn --production
RUN yarn build

CMD yarn start:prod