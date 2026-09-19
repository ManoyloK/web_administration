FROM nginx:alpine

# Remove Nginx default boilerplate configurations
RUN rm /etc/nginx/nginx.conf

# Mount your custom multi-site routing maps
COPY nginx.conf /etc/nginx/nginx.conf

# Copy both application directories into the web root
COPY custom_domain_site /usr/share/nginx/html/custom_domain_site
COPY render_default_site /usr/share/nginx/html/render_default_site

EXPOSE 80