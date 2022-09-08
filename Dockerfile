FROM node:17-alpine
WORKDIR /usr/src/api-goals-node
ENV MONGO_URI='mongodb+srv://memosk8:Password123@cluster0.nuhhssx.mongodb.net/tunein?retryWrites=true&w=majority'
ENV PORT=5000
ENV JWT_SECRET=runninbgb
COPY . .
RUN npm install
CMD ["npm","run","server"]
