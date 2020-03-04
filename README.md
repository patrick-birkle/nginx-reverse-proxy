### Description
Simple and lightweight docker-compose setup for automated nginx reverse proxy with letsencrypt support by using following images.
* [nginx](https://hub.docker.com/_/nginx)
* [jwilder/docker-gen](https://hub.docker.com/r/jwilder/docker-gen)
* [JrCs/docker-letsencrypt-nginx-proxy-companion](https://hub.docker.com/r/jrcs/letsencrypt-nginx-proxy-companion)

### Prerequisites
- Docker: 1.13.0+
- Docker-Compose: 1.10.0+

### Usage
1. Clone repository
```bash
git clone https://github.com/patrick-birkle/nginx-reverse-proxy.git
```

2. Make `start.sh` executable and execute it
```bash
chmod 764 start.sh
./start.sh
``` 

3. Use environment variables `VIRTUAL_HOST`, `LETSENCRYPT_HOST`, `LETSENCRYPT_EMAIL` in your docker containers you want to redirect by the reverse proxy.
```
...
    environment:
      - LETSENCRYPT_HOST=test.example.io
      - LETSENCRYPT_EMAIL=test@example.io
      - VIRTUAL_HOST=test.example.io
...
``` 

### Additional documentation
If you need additional information please use therefor created documentation pages
* [nginx](https://registry.hub.docker.com/_/nginx/)
* [docker-gen](https://github.com/jwilder/docker-gen)
* [docker-letsencrypt-nginx-proxy-companion](https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion)