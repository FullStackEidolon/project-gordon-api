FROM node:17

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .
COPY .env-docker .env

ENV PORT=8080

EXPOSE 8080

CMD [ "npm", "start" ]
