FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "./index.js"]

#step.1: sudo docker build -t node_demo:1.0.0 .
#step.2: sudo docker images
#step.3: sudo docker run -p 3000:8080 node_demo:1.0.0