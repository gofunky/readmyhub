FROM node:6.10-alpine

WORKDIR /app/

COPY index.js package.json /app/

RUN npm install

CMD ["node", "/app/index.js"]
