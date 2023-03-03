# spring-graphql-keycloak-boilerplate
Spring v3 + GraphQL + GraphiQL + KeyCloak

## Description

This is a boilerplate project to create a Spring Boot application with GraphQL and KeyCloak integration.

## Tech stack
- **Spring Boot v3** ([View configuration here](https://start.spring.io/#!type=maven-project&language=java&platformVersion=3.0.3&packaging=jar&jvmVersion=17&groupId=ch.supsi&artifactId=wiremap&name=wiremap&description=Wiremap%20application%20backend&packageName=ch.supsi.wiremap&dependencies=graphql,web,postgresql,lombok,data-jpa,devtools)):
  - Spring for GraphQL
  - Spring Web
  - Lombok
  - Spring Boot DevTools
  - Spring Data JPA
  - PostgreSQL Driver
- KeyCloak v21
- GraphQL + GraphiQL

## How to run
- Run KeyCloak
- Run the application
- Open GraphiQL at http://localhost:8080/graphiql
- Run the following query to test the application
```graphql
query hello {
  hello
}
```
