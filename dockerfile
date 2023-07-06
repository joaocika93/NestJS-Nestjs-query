FROM node:16.13 As development

WORKDIR /usr/src/app

COPY package*.json ./
COPY yarn.lock ./

RUN yarn

COPY . .

CMD "yarn" "start:dev"

EXPOSE 3000