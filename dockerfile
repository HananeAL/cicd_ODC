FROM node:latest
WORKDIR /app
COPY package*.json .
COPY npm*.lock .
RUN npm install
COPY . .
RUN ["npm","start"]