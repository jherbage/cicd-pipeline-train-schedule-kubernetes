FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 30000
CMD [ "PORT=30000", "npm", "start" ]
