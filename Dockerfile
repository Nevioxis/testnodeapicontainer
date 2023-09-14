FROM node:alpine

WORKDIR /app

RUN apk add --update --no-cache netcat-openbsd pingu

RUN npm install -g nodemon
ADD package.json package-lock.json ./
COPY ./src ./
RUN npm install

CMD ["nodemon", "src"]
