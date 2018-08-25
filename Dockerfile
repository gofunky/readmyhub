FROM node:10.9-alpine

WORKDIR /app/

COPY index.js package.json /app/

RUN npm install

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/gofunky/readmyhub" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0"

CMD ["node", "/app/index.js"]
