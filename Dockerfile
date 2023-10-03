FROM --platform=linux/amd64 node:10

WORKDIR /app

COPY package*.json ./

RUN npm i

COPY . .

RUN npm run build

EXPOSE 1337

CMD ["npm", "start"]


