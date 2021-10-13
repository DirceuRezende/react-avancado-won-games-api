# API do Projeto WonGames do Curso React Avançado

Utiliza o Headless CMS [Strapi](https://strapi.io/) para criar a API e o painel administrativo da e-commerce WonGames.

## Requisitos

A api utiliza o [PostgreSQL](https://www.postgresql.org/), para utilizar o projeto será necessário a instalar o PostgreSQL localmente ou no Docker

Para configurar o banco de dados acesse [config/database.js](config/database.js)

## Desenvolvimento

Após clonar o repositório, instale as dependências

```
yarn install
```

E execute:

```
yarn develop
```

As urls de acesso:

- `http://localhost:1337/admin` - O dashboard para administração e criação.
- `http://localhost:1337/graphql` - GraphQL Playground para testar as queries e mutations.

A primeira vez que você se logar no admin você deve criar um usuário admin.
