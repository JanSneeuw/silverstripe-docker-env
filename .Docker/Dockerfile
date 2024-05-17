FROM brettt89/silverstripe-web:8.1

# Install XDebug
RUN install-php-extensions xdebug

# Set up XDebug configuration
COPY .Docker/docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
