# Upstream's deployments/Dockerfile with these changes: the base image is pinned to
# php:8.3-apache (upstream: php:apache, i.e. latest; 8.3 was current at the secDevLabs commit);
# its files are copied from app/deployments/ (upstream's build context is the app folder); and
# the site (app/app/) is copied into /var/www/html, where upstream's compose file mounts it.
FROM docker.io/library/php:8.3-apache

COPY app/deployments/apache.conf /etc/apache2/sites-available/000-default.conf
COPY app/deployments/php.ini /usr/local/etc/php/
COPY app/app/ /var/www/html/

RUN chown -R www-data:www-data /var/www/html && a2enmod rewrite
