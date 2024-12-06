
FROM node:18-alpine
WORKDIR dabble-web
COPY package*.json ./
COPY ./public ./public

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]