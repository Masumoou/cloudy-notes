# cloudy-notes
hello from cloudy-notes. this is my toy app for devops/sre learning.
- week 1: linux, shell, vim, git# cloudy-notes

A simple Flask app running with **Docker** and **NGINX** as a reverse proxy. It includes a **health check** route and is served with **HTTPS** using a self-signed SSL certificate.

## Docker Image

### Build the Docker image:
```bash
docker build -t cloudy-notes:0.3 .

