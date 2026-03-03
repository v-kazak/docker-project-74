FROM node:20.12.2

USER 1000:1000

WORKDIR /app

COPY app/package*.json .

RUN npm ci

COPY app .

CMD ["make" , "test"] 
