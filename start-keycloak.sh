#!/bin/zsh

# Ask user if they want to detach from the container or not
echo -n "Do you want to detach from the container after start? [y/n] "
read -r detach

# Check if user wants to detach from the container
PARAMS=()
if [[ $detach == "y" ]]; then
    PARAMS+=(-d)
    PARAMS+=(--restart always)
fi

docker run \
    --name keycloak-boilerplate \
    -p 8082:8080 \
    -e KEYCLOAK_ADMIN=admin \
    -e KEYCLOAK_ADMIN_PASSWORD=admin \
    ${PARAMS[@]} \
    quay.io/keycloak/keycloak:21.0.0 \
    start-dev