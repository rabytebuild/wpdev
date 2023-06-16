# Base image
FROM wordpress:latest

# Set the working directory
WORKDIR /var/www/html

# Copy the contents of the current directory to the working directory
COPY . .

# Install additional PHP extensions if needed
# For example, to install the mysqli extension, uncomment the following lines:
# RUN docker-php-ext-install mysqli

# Set the correct file permissions
RUN chown -R www-data:www-data .

# Expose port 80
EXPOSE 80

# Define the entry point
CMD ["apache2-foreground"]
