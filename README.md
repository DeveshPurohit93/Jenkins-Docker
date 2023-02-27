# Jenkins-Docker
```mermaid
graph TD;
developer-->github-->webhook_triggered-->Jenkins-->Dockerfile-->Docker_image_build-->pushed_docker_hub-->pulled_by_production_server;
```
