# Group 1-contain

Before starting the deployment process, first prepare the image and a DockerHub account.

Since the image folder is named dabble-web, I will then cd dabble-web to start build.
#Make sure you have a Dockerfile setup. 

FROM node:18-alpine
WORKDIR dabble-web
COPY package*.json ./
COPY ./public ./public

RUN npm install

(you may change this port if needed)
EXPOSE 3000

CMD ["npm", "start"]

#Start your build.
docker build -t dabble-web .

#Then, pull the image.

docker pull dabble-web:latest

#Now you have the image locally.

REPOSITORY               TAG       IMAGE ID       CREATED        SIZE
albertabdon/dabble-web   latest    52ee8fc286d7   26 hours ago   219MB
dabble-web               latest    52ee8fc286d7   26 hours ago   219MB
welcome-to-docker        latest    243b4dd74491   2 weeks ago    234MB


