#!/bin/zsh

# Ask user if they want to detach from the container or not
echo "Do you want to detach from the container after start? [y/n]"
read -r detach

# Check if user wants to detach from the container
if [[ $detach == "y" ]]; then
  # Start Keycloak container
  docker run \
    --name keycloak-boilerplate \
    -d \
    -p 8082:8080 \
    -e KEYCLOAK_ADMIN=admin \
    -e KEYCLOAK_ADMIN_PASSWORD=admin \
    --restart=always \
    quay.io/keycloak/keycloak:21.0.0 \
    start-dev
else
  # Start Keycloak container
  docker run \
    --name keycloak-boilerplate \
    -p 8082:8080 \
    -e KEYCLOAK_ADMIN=admin \
    -e KEYCLOAK_ADMIN_PASSWORD=admin \
    quay.io/keycloak/keycloak:21.0.0 \
    start-dev
fi