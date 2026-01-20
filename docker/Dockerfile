# Use Ubuntu base image
FROM ubuntu:22.04

# Install Nginx web server
RUN apt update && apt install -y nginx

# Copy your Day 1-7 README 
COPY README.md /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
