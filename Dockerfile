# Use official Nginx image as base
FROM nginx:alpine

# Copy custom index.html to Nginx's default directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
