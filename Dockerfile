#test
FROM node:6.9.5
EXPOSE 8082
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json .
RUN npm install
COPY . .
CMD ["npm", "start"]
