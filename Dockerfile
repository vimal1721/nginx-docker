FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy custom index.html and images
COPY index.html .
COPY hero-image.jpg .

# Expose port 80
EXPOSE 80
