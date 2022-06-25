FROM node:18

RUN corepack enable

RUN yarn set version stable

WORKDIR /app

COPY package.json /app
COPY yarn.lock /app

RUN ls

RUN yarn

COPY src /app/src

CMD yarn dev
