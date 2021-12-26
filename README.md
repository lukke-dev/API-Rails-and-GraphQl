# A Simple Api with Rails and GraphQL

## Mount the GraphiQL IDE in **https://api-rails-graphql-2021.herokuapp.com/graphiql**
![IDE Graphiql](https://i.ibb.co/dJ41kYn/Captura-de-tela-de-2021-12-26-18-17-21.png)


## ENDPOINT **https://api-rails-graphql-2021.herokuapp.com/graphql**
![endpoint Graphql](https://i.ibb.co/ZmH31Bg/Captura-de-tela-de-2021-12-26-18-37-34.png)

## Mutations
  createUser(input: CreateUserInput)
  deleteUser(input: DeleteUserInput)
  updateUser(input: UpdateUserInput)

### A simple query
gql```
  query {
  users{
    id
    name
    email
    booksCount
    books {
      title
    }
  }
}
```