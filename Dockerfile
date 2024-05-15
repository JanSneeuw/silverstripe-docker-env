FROM brettt89/silverstripe-web:php8.1-apache

# Set the working directory
WORKDIR /var/www/html

# Copy composer files and install dependencies
COPY composer.json composer.lock ./
RUN composer install --prefer-dist --no-scripts --no-dev --optimize-autoloader

# Copy the rest of the application code
COPY . .

# Set permissions for the web server
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# Ensure the storage directories exist and are writable
RUN mkdir -p /var/www/html/public/assets && chown -R www-data:www-data /var/www/html/public/assets

# Expose the web server port
EXPOSE 80

# Run Apache in the foreground
CMD ["apache2-foreground"]