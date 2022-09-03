FROM node:lastest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

EXPOSE 8080:80
RUN npm install
CMD ["npm","start"]