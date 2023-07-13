FROM node:14.8.0-slim

WORKDIR /src/

COPY src/* .

RUN npm install && \
    ls -la \
    npm cache clean --force && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 3001

CMD [ "npm", "start"]