FROM node:lts-alpine
EXPOSE 8080
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY server.js server.js
CMD [ "node", "server.js" ]
ENV OPENSHIFT_BUILD_NAME node-web-app-1
ENV OPENSHIFT_BUILD_NAMESPACE myproj1
ENV OPENSHIFT_BUILD_SOURCE https://github.com/openshift/node-web-app
