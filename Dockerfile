FROM node:17-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json ./

EXPOSE 3000
RUN npm install
COPY . .
CMD ["npm","run","server"]
