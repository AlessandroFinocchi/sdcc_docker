.PHONY: docker_gen docker_clean

docker_gen:
	sudo docker compose up -d

docker_clean:
	sudo docker compose down # stop and remove all containers
	docker images | grep "sdcc" | awk '{print $3}' | xargs docker rmi # remove all images with name "sdcc*"

docker_clean_host:
	sudo docker compose down # stop and remove all containers
	docker images | grep "sdcc_host" | awk '{print $3}' | xargs docker rmi # remove all images with name "sdcc_host*"

docker_clean_registry:
	sudo docker compose down # stop and remove all containers
	docker images | grep "sdcc_registry" | awk '{print $3}' | xargs docker rmi # remove all images with name "sdcc_registry*"
