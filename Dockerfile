FROM python:3.12-slim

# Install NGINX
RUN apt-get update && apt-get install -y nginx

# Set working directory for app
WORKDIR /app

# Install Python dependencies
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app and NGINX config
COPY app/ .
COPY nginx.conf /etc/nginx/nginx.conf

# Expose both Flask and NGINX ports
EXPOSE 8080
EXPOSE 80

# Start NGINX and Flask
CMD service nginx start && python main.py

