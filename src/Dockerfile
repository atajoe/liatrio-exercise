FROM node:14.8.0-slim

WORKDIR /src

COPY . .

RUN ls -la && \
    pwd

RUN npm install && \
    npm cache clean --force && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 3001

CMD [ "npm", "start"]