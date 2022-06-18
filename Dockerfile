FROM nginx:1.21

ENV VERSION=latest

# Replace the index file.
RUN echo "<h1>Version: ${VERSION}</h1>" > /usr/share/nginx/html/index.html

ENTRYPOINT ["nginx-debug", "-g", "daemon off;"]
