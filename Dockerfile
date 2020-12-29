FROM node:lts-alpine
EXPOSE 8080
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY server.js server.js
CMD [ "node", "server.js" ]
