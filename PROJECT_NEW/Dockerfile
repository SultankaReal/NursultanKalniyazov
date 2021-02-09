FROM nginx:1.18.0

COPY conf/mirror.conf /etc/nginx/conf.d/default.conf #copying the mirror into nginx directory
COPY www.chiark.greenend.org.uk/~sgtatham/ usr/share/nginx/html #copy the result of the script.sh into nginx another directory

