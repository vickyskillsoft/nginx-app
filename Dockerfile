# Use official Nginx image as base
FROM nginx:alpine

# Copy custom nginx configuration (listens on 8080)
COPY nginx.conf /etc/nginx/nginx.conf

# Copy index.html to Nginx's default directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 8080 (Cloud Run requirement)
EXPOSE 8080

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
