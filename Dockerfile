FROM nginx:latest

# Remove default Nginx configurations
RUN rm -rf /usr/share/nginx/html/*

# Copy HTML, CSS, and Bootstrap files to Nginx directory
COPY . /usr/share/nginx/html

