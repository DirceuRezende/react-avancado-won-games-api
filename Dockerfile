FROM strapi/strapi:3.1.5-node12

WORKDIR /srv/app

COPY ./package.json ./
COPY ./yarn.lock ./

ENV NODE_ENV production
ENV DATABASE_CLIENT=postgres

RUN yarn install

COPY . .

RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]
