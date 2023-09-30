include .env

run:
	docker run -p 3000:3000 --name ${CONTAINER_NAME} --mount "type=bind,src=${APP_PATH},target=/sample" ${IMAGE_NAME}

up:
	docker build -t ${IMAGE_NAME} .
	make run

down:
	docker stop ${CONTAINER_NAME}
	docker rm ${CONTAINER_NAME}