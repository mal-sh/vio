# Use the official Nginx Alpine image as base
FROM nginx:alpine

# Copy your index.html to Nginx's default public folder
COPY index.html /usr/share/nginx/html/

# Expose port 80 (default HTTP port)
EXPOSE 80

# Start Nginx in foreground mode (required for Docker containers)
CMD ["nginx", "-g", "daemon off;"]
