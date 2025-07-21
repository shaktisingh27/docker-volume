FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

# VOLUME [ "/app/feedback" ] not needed in case of named volume/ for anonyus volume it is neede
# VOLUME [ "/app/node_modules" ] node module anonymous volume to protect it from bind mount overwritten and runs correctly

CMD [ "node", "server.js" ]