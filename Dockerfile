FROM node:lts
WORKDIR /${APP_NAME}
COPY package*.json ./
RUN npm install
COPY . .
CMD [ "npm", "start" ]