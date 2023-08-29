# 開発作業用コンテナ
FROM alpine:3.18.3

RUN mkdir -p /workspace/src/frontend/ /workspace/src/backend/

# 必要なパッケージのインストール
RUN apk --no-cache add \
    curl git

# PHP 8.2と関連パッケージのインストール
RUN apk --no-cache add \
    php82 \
    php82-tokenizer \
    php82-json \
    php82-common \
    php82-openssl \
    php82-curl \
    php82-zlib \
    php82-xml \
    php82-phar \
    php82-intl \
    php82-dom \
    php82-xmlreader \
    php82-ctype \
    php82-session \
    php82-mbstring \
    php82-dom \
    php82-xmlreader \
    php82-xmlwriter \
    php82-fileinfo \
    && ln -s /usr/bin/php82 /usr/bin/php

# Composerのインストール
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Node.jsのインストール
RUN apk add --no-cache nodejs npm

# MariaDBクライアントのインストール
RUN apk add --no-cache mariadb-client

# セットアップ
WORKDIR /workspace/src/

COPY ./.devcontainer/entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]