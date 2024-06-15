# Use the official WordPress image from Docker Hub
FROM wordpress:latest

# Copy the entire WordPress content into the container
COPY ./wp-content /var/www/html/wp-content

# Set appropriate permissions for the WordPress content directory
USER root
RUN chown -R www-data:www-data /var/www/html/wp-content

# Switch back to the www-data user
USER www-data

# Set environment variables for the WordPress database connection
ENV WORDPRESS_DB_HOST=mysql:3306
ENV WORDPRESS_DB_USER=wordpress
ENV WORDPRESS_DB_PASSWORD=18032002
ENV WORDPRESS_DB_NAME=wordpress

