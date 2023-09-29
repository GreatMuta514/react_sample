# Use an official Node.js runtime as the base image
FROM node:lts
WORKDIR /sample
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
CMD [ "npm", "start" ]