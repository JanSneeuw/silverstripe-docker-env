FROM brettt89/silverstripe-web:8.1

# Set the working directory
WORKDIR /var/www/html

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy composer files and install dependencies
COPY composer.json composer.lock ./
RUN composer install --prefer-dist --no-scripts --no-dev --optimize-autoloader

# Copy the rest of the application code
COPY . .

# Set permissions for the web server
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# Ensure the storage directories exist and are writable
RUN mkdir -p /var/www/html/public/assets && chown -R www-data:www-data /var/www/html/public/assets
