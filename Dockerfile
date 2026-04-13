# Dockerfile

# Use an official nginx image as a base
FROM nginx:alpine

# Copy the HTML files to the nginx public folder
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]