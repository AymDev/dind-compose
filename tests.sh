#!/usr/bin/env bash

# Docker image name and tag
IMAGE_TEST_TAG="dind-compose:test"

# Display step title
function step_title() {
    echo -e "\n========================================"
    echo -e "\t\e[44m STEP: $1 \e[49m"
    echo -e "========================================\n"
}

# Display error message
function error() {
    echo -e "\t\e[41m$1\e[49m"
}

# Display success message
function success() {
    echo -e "\t\e[42m$1\e[49m"
}





# --------------------------------------------------
step_title "Building test image"
docker build -t "$IMAGE_TEST_TAG" .

# --------------------------------------------------
step_title "Run tests"
if [ -z "$(docker run --rm $IMAGE_TEST_TAG which docker)" ]; then
    error "Missing Docker binary"
    exit 1
fi
if [ -z "$(docker run --rm $IMAGE_TEST_TAG which docker-compose)" ]; then
    error "Missing Docker Compose binary"
    exit 1
fi

success "Tests passed !"

# --------------------------------------------------
step_title "Removing test image"
docker rmi "$IMAGE_TEST_TAG"