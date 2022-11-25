#Primera Etapa
FROM node:14

RUN mkdir -p /app

WORKDIR /app

COPY package.json,package-lock.json /app

RUN npm install

COPY . /app

RUN ng build && ng run Compara-Asegurate:server

#Segunda Etapa

CMD [ "node dist/Compara-Asegurate/server/main.js" ]