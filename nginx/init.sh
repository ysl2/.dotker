#!/bin/bash
# NOTE: You only need to modify www project target. Don't modify port.
# After container init, you need to exec into container to deploy docsify process.
# ```
# # Exec this when you are outside container:
# sudo docker exec -it nginx /bin/bash
# 
# # After into container:
# ln -s /bin/nodejs-lib/bin/node /bin/node
# cd /www
# /bin/nodejs-lib/bin/docsify serve &
# ```
sudo docker run \
    -d \
    -p 80:80 \
    -v /home/yusongli/Documents/YUNet:/www \
    -v /home/yusongli/.dotker/nginx/etc/nginx/conf.d/default.conf:/etc/nginx/conf.d/default.conf \
    -v /home/yusongli/.dotker/nginx/etc/nginx/htpasswd:/etc/nginx/htpasswd \
    -v /home/yusongli/.dotker/nginx/etc/nginx/nginx.conf:/etc/nginx/nginx.conf \
    -v /home/yusongli/.bin/nodejs-lib:/bin/nodejs-lib \
    --name nginx \
    nginx

# Add new htpasswd config:
# htpasswd -bc ./htpasswd user1 *******

# Update htpasswd config:
# htpasswd -b ./htpasswd user2 *******
