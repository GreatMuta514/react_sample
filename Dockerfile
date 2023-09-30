FROM node:lts
WORKDIR /${APP_NAME}
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
CMD [ "npm", "start" ]