FROM node:alpine

WORKDIR /app
VOLUME /src

RUN apk add --update --no-cache netcat-openbsd pingu curl

RUN npm install -g nodemon
ADD package.json package-lock.json ./
RUN npm install

CMD ["nodemon", "src"]
