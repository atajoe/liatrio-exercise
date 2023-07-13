FROM node:14.8.0-slim

WORKDIR /usr/src/app

COPY . .

RUN npm install && \
    npm cache clean --force && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 3001

CMD [ "npm", "start"]