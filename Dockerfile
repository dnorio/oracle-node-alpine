FROM node:14.15.4-alpine3.12

# Contains only necessary libs from oracle instant client: 
# "*/libociei.so */libons.so */libnnz12.so */libclntshcore.so.12.1 */libclntsh.so.12.1"
ENV CLIENT_FILENAME instantclientlibs-linux.x64-12.1.0.1.0.tar.gz

COPY ${CLIENT_FILENAME} /usr/lib

# libaio and libnsl are necessary for oracledb
RUN echo "https://dl-cdn.alpinelinux.org/alpine/v3.12/main" > /etc/apk/repositories \
    && echo "https://dl-cdn.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories \
    && apk add --no-cache libaio libnsl \
    && ln -s /usr/lib/libnsl.so.2 /usr/lib/libnsl.so.1 \
    && cd /usr/lib \
    && tar xf ${CLIENT_FILENAME} \
    && ln -s /usr/lib/libclntsh.so.12.1 /usr/lib/libclntsh.so \
    && rm ${CLIENT_FILENAME}
