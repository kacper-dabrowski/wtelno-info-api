FROM --platform=linux/amd64 node:10

WORKDIR /app

COPY package*.json ./

RUN npm i

COPY . .

CMD ["npm", "start"]


