FROM docker:stable-dind

# Install Docker Compose
RUN apk add --no-cache py-pip python-dev libffi-dev openssl-dev gcc libc-dev make \
    && pip install docker-compose