# BUILD STAGE 
FROM php:8.2-cli AS build
WORKDIR /app
COPY index.php .

# RUNTIME STAGE
FROM php:8.2-apache
WORKDIR /var/www/html
COPY --from=build /app/index.php .

EXPOSE 80