# Use the lightweight, secure Alpine version of Nginx
FROM nginx:alpine

# Copy your local static files into Nginx's default public directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to indicate where web traffic enters
EXPOSE 80