# Путь к docker-compose файлу
DOCKER_COMPOSE_FILE=infrastructure/docker-compose.yml

.PHONY: up down status

up:
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d

down:
	docker-compose -f $(DOCKER_COMPOSE_FILE) down

status:
	docker ps -a