FROM docker.io/node:18-alpine

WORKDIR /usr/app

COPY ./package.json /usr/app

RUN npm install

COPY ./ ./

# Startup Command
CMD ["npm", "start", "serve"]