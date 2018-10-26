FROM registry.cn-shenzhen.aliyuncs.com/sjroom/alpine-java8

# Install nginx
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.7/main" >> /etc/apk/repositories && \
    apk add --update nginx=1.12.2-r3 && \
    rm -rf /var/cache/apk/* && \
    chown -R nginx:www-data /var/lib/nginx

RUN mkdir -p /run/nginx/ && \
    mkdir -p /export/App/html/ && \
    echo "hello nginx"  > /export/App/html/index.html