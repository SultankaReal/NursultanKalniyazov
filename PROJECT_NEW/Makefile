.PHONY: sync build run stop
sync:
        rm -rf www.chiark.greenend.org.uk
        wget -mkEpnp https://www.chiark.greenend.org.uk/~sgtatham/bugs-ru.html
build:
        docker build -t image_name .
run:
        docker run --name container_name -d -p 8080:8080 image_name
stop:
        docker stop $(docker ps -a -q) && docker container rm $(docker ps -a -q)
