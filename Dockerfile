FROM node:latest
WORKDIR /nodeapp
COPY . .
RUN npm install
EXPOSE 8888
ENTRYPOINT ["node", "app.js"]