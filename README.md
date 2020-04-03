# DinD-Compose
Docker image with Docker (DinD) and Docker Compose.
The image

## How to use
Just pull the image from **Docker Hub**:
```sh
docker pull aymdev/dind-compose
```

## Why this image ?
Testing **Docker** images in CI with complex stacks means you often use *Docker-in-Docker* (*"DinD"*), 
and you install **Docker Compose** which takes time.
You can use this image to avoid consuming CI build minutes.