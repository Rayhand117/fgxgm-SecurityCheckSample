FROM node:21-alpine3.18

RUN npm install -g npm@latest

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
