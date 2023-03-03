# spring-graphql-keycloak-boilerplate

## Description

This is a boilerplate project to create a Spring Boot application with GraphQL and KeyCloak integration.

## Features

- Supported both GraphQL and REST APIs
- KeyCloak integration with the following features:
  - Single sign-on (SSO)
  - Login
  - Logout
  - Forgot password
  - Register
  - Reset password
  - Admin panel
  - And much more...
- GraphiQL playground
- Spring Boot DevTools
- Already configured with PostgreSQL drivers and JPA

## Tech stack
- Spring Boot v3 ([View configuration here](https://start.spring.io/#!type=maven-project&language=java&platformVersion=3.0.3&packaging=jar&jvmVersion=17&groupId=ch.supsi&artifactId=wiremap&name=wiremap&description=Wiremap%20application%20backend&packageName=ch.supsi.wiremap&dependencies=graphql,web,postgresql,lombok,data-jpa,devtools)):
  - Spring for GraphQL
  - Spring Web
  - Lombok
  - Spring Boot DevTools
  - Spring Data JPA
  - PostgreSQL Driver
- KeyCloak v21 + Spring Security
- GraphQL + GraphiQL
- Maven

## Initial setup

1. Run KeyCloak container
```bash
chmod -x ./start-keycloak.sh && ./start-keycloak.sh
```

After the container is up and running, you can access the KeyCloak admin panel at http://localhost:8082/ with the following credentials:

- Username: `admin`
- Password: `admin`

> Notice: Unfortunately, you can change the username and password by editing the `start-keycloak.sh` file. 

2. Setup KeyCloak realm and application client

Since KeyCloak is not part of this project, you need to manually setup the KeyCloak realm and application client.

You can follow the official documentation [here](https://www.keycloak.org/docs/13.0/getting_started/).

3. Edit the `application.properties` file

You need to update the configured KeyCloak realm and client ID (and secret if you have one).

```properties
spring.security.oauth2.client.provider.keycloak.issuer-uri=http://localhost:8082/realms/<REALM NAME>
spring.security.oauth2.resourceserver.jwt.issuer-uri=http://localhost:8082/realms/<REALM NAME>
spring.security.oauth2.client.registration.keycloak.client-id=<CLIENT NAME>
spring.security.oauth2.client.registration.keycloak.client-secret=<CLIENT SECRET>
```

4. Run the application with Maven

```bash
mvn spring-boot:run
```