FROM qnib/alpn-node

RUN apk add --update unzip \
 && cd /tmp/ \
 && wget -q https://github.com/chooban/s3-docker-volume-plugin/archive/master.zip \
 && unzip master.zip
RUN cd /tmp/s3-docker-volume-plugin-master \
 && npm install -g forever \
 && npm install -g .
