# Use the official Nginx image
FROM nginx:latest

# Remove default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML & CSS files into the Nginx web directory
COPY . /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
