# Use Nginx as the base image
FROM nginx:latest

# Remove the default Nginx index file
RUN rm -rf /usr/share/nginx/html/*

# Copy the build directory to Nginx's default public directory
COPY build /usr/share/nginx/html

# Expose the port
EXPOSE 80

# The default command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
