FROM node:13-alpine

WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "./"]

#RUN npm install @vue/cli
RUN npm config set unsafe-perm true
RUN npm install 

COPY . .

RUN npm run build

EXPOSE 8080

CMD ["node", "server.js"]