# Jenkins-Docker
--- mermaid
graph TD;
developer --> github --> webhook triggered --> Jenkins --> Dockerfile --> Docker image build --> pushed to docker hub --> pulled by production server;
---
