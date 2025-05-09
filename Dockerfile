FROM node:22

WORKDIR /usr/src/docs

COPY package*.json ./

RUN npm install

COPY . .
RUN npm run docs:build

EXPOSE 4040

CMD ["npm", "run", "docs:preview"]