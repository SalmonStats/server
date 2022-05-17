.PHONY: up
up:
	docker-compose up

.PHONY: build
build:
	docker-compose build

.PHONY: down
down:
	docker-compose down -v
