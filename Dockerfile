#sudo docker run --rm --name=nodejs --net=host -v $PWD:/sistema -it bitnami/node
FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
# RUN npm install --only=production

COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]