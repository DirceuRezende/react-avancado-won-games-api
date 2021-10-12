FROM strapi/strapi:3.1.5-node12

WORKDIR /srv/app

COPY ./package.json ./
COPY ./package-lock.json ./
COPY ./yarn.lock ./

ENV NODE_ENV production
ENV DATABASE_CLIENT=postgres

RUN npm install

RUN npx browserslist@latest --update-db

COPY . .

RUN npm run build

EXPOSE 1337

CMD ["npm", "start"]
