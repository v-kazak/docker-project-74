# THIS IS A TEST
FROM node:24-bookworm-slim

ENV PATH="$PATH:node_modules/.bin"

RUN apt-get update && apt-get install -y --no-install-recommends make \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .

CMD ["bin/start.sh"]
