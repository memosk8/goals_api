FROM node:17-alpine
WORKDIR /usr/src/api-goals-node
ENV MONGO_URI=''
ENV PORT=5000
ENV JWT_SECRET=runninbgb
COPY . .
RUN npm install
CMD ["npm","run","server"]
