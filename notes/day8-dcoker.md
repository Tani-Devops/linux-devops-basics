#Day 8- Docker Basics

## Key Learnings 
- Verified Docker installation
- Built first Docker image (Ubuntu + Nginx)
- Ran container and exposed port 
- Served README.md via Nginx as portfolio trick

## Commands learned 
docker --versio 
docker ps -a
docker build -t <image_name>
docker run -d -p 8080:80 <image_name>
