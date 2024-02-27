FROM node:current-alpine

WORKDIR /app

COPY package.json ./

RUN npm i -g pnpm

RUN pnpm i

COPY . .

CMD ["pnpm", "run", "dev"]
