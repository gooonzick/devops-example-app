FROM node:20-slim

ENV PATH="$PATH:node_modules/.bin"

RUN apt-get update && apt-get install -y make

WORKDIR /app

COPY package*.json ./
RUN npm ci
ENV SERVER_MESSAGE="Hello, this is self study from Hexlet!"

COPY . .

CMD ["bin/start.sh"]
