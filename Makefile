.PHONY: sync deploy stop
sync:
        ./script3
deploy:
        docker build -t image_building /sultan/
        docker run --rm -d -p 80:80 nginx
stop:
        docker container rm $$(docker ps -aq) -f





