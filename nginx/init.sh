#!/bin/bash
sudo docker run \
    -d \
    -p 80:80 \
    -v /home/yusongli/Documents/docsify-template:/www\
    -v /home/yusongli/.dotker/nginx/etc/nginx/conf.d/default.conf:/etc/nginx/conf.d/default.conf \
    -v /home/yusongli/.dotker/nginx/etc/nginx/htpasswd:/etc/nginx/htpasswd \
    -v /home/yusongli/.dotker/nginx/etc/nginx/nginx.conf:/etc/nginx/nginx.conf \
    --name nginx \
    nginx

# Add new htpasswd config:
# htpasswd -bc ./htpasswd user1 *******

# Update htpasswd config:
# htpasswd -b ./htpasswd user2 *******
