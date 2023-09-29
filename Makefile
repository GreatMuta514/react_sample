run:
	docker run -p 3000:3000 --name sample --mount "type=bind,src=$(HOME)/workspace/react/sample,target=/sample" sample

up:
	docker build -t sample .
	make run

down:
	docker stop sample
	docker rm sample