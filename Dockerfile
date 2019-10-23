FROM node:alpine
ENV NPM_CONFIG_LOGLEVEL info

COPY package*.json ./

RUN yarn

RUN yarn global add nodemon

COPY . .

EXPOSE 4000

CMD [ "yarn", "dev" ]