FROM php:7.4-apache

RUN apt-get update && \
    apt-get install -y php7.4-dev
    #autoconf automake gcc libopenssl-devel m4 make openssl php7.4-dev php7.4-geoip qstat

RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini && \
    apachectl -k graceful

RUN curl -sSL https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz -o /tmp/ioncube.tar.gz && \
  tar -xzf /tmp/ioncube.tar.gz -C /tmp/ && \
  export PHP_EXT_DIR=$(php-config --extension-dir) && \
  mv /tmp/ioncube/ioncube_loader_lin_7.4.so  $PHP_EXT_DIR/ && \
  echo "zend_extension = $PHP_EXT_DIR/ioncube_loader_lin_7.4.so" >> /usr/local/etc/php/php.ini && \
  rm -rf /tmp/*

#RUN curl -sSL https://pecl.php.net/get/ssh2-1.2.tgz -o /tmp/ssh2-1.2.tgz && \
#    tar -xzf /tmp/ssh2.tgz -C /tmp/ && \
#    cd /tmp/ssh2-1.2 && \
#    phpize && ./configure --with-ssh2 && make install && \
#    echo "" > /usr/local/etc/php/conf.d/ssh2.ini && \
#    apachectl -k graceful && \
#    rm -rf /tmp/*