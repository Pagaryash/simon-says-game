# Use an official Nginx image to serve the static files
FROM nginx:alpine

# Copy your HTML, CSS, and JS files to the nginx web directory
COPY ./ /usr/share/nginx/html/

# Expose port 80 to access the web server
EXPOSE 80

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]


