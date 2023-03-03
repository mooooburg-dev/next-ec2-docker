FROM node:16.19.1-alpine

ENV NODE_VERSION 16.19.1

WORKDIR /app

COPY . /app

RUN npm install

RUN npm run build

CMD ["npm", "run", "start"]

EXPOSE 80