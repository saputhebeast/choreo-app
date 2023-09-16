FROM node:18-alpine

WORKDIR /choreo-app

EXPOSE 3000

COPY package.json package-lock.json ./

RUN npm install

COPY . ./

CMD ["npm", "run", "dev"]