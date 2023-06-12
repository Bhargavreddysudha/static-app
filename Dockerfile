FROM ubuntu
RUN apt update \
    && apt install apache2 zip -y \
    && apt install apache2-utils -y \
    && apt clean
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/grandcoffee.zip /tmp/
RUN cd tmp \
    && unzip /tmp/grandcoffee.zip \
    && cp -r /tmp/html/* /var/www/html/
EXPOSE 80