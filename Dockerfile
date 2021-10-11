FROM strapi/base:14

WORKDIR /opt/app

COPY ./package.json ./
COPY ./yarn.lock ./

RUN apk --no-cache --virtual build-dependencies add \
        python \
        make \
        g++ \
&& yarn install --production \
&& apk del build-dependencies

RUN npx browserslist@latest --update-db

COPY . .

ENV NODE_ENV production
ENV DATABASE_CLIENT=postgres


RUN yarn build

EXPOSE 1337
CMD ["yarn", "start"]
