FROM node:10.9-alpine

WORKDIR /app/

COPY index.js package.json /app/

RUN npm install

CMD ["node", "/app/index.js"]
