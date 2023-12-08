
FROM node:lts

FROM node:lts as builder

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . .

FROM node:lts-alpine

WORKDIR /app

COPY --from=builder /app . 

EXPOSE 3000

ENV MONGO_URL "mongodb://mongo:27017/tasks"

CMD ["node", "index.js"]