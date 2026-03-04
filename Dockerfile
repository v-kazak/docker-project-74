FROM node:20.12.2

WORKDIR /app

COPY app/package*.json .

RUN npm ci

COPY app .

CMD ["make" , "test"] 
