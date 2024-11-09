FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gh-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.dfnqsyw.mongodb.net
ENV MONGODB_USERNAME adilraza
ENV MONGODB_PASSWORD aEM0cyBATEsGcTeo

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]