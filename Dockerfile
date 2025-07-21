FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

# VOLUME [ "/app/feedback" ] not needed in case of named volume/ for anonyus volume it is neede

CMD [ "node", "server.js" ]