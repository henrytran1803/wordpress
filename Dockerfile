FROM wordpress:latest

COPY ./ /var/www/html/

# Đặt quyền truy cập thích hợp cho thư mục WordPress
USER root
RUN chown -R www-data:www-data /var/www/html

# Chuyển về người dùng www-data
USER www-data

# Thiết lập các biến môi trường cho kết nối cơ sở dữ liệu WordPress
ENV WORDPRESS_DB_HOST=mysql:3306
ENV WORDPRESS_DB_USER=wordpress
ENV WORDPRESS_DB_PASSWORD=18032002
ENV WORDPRESS_DB_NAME=wordpress
