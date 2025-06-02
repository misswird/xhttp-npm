FROM node:20.11.1-alpine3.19

WORKDIR /app

COPY npm app.js package.json ./

EXPOSE 3000

RUN apk add --no-cache curl bash && \
    npm install && \
    chmod +x npm app.js

CMD ["npm", "start"]