.PHONY: up
up:
	docker-compose up

.PHONY: start
start:
	docker-compose up -d

.PHONY: build
build:
	docker-compose build

.PHONY: down
down:
	docker-compose down -v

.PHONY: docs
docs:
	cd app && yarn start:dev && mv app/docs docs

.PHONY: env
env:
	cp app/.env.sample app/.env && cp hash/.env.sample hash/.env

.PHONY: update
update:
	git submodule update --remote
