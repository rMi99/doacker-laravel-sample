# Define variables
DOCKER_COMPOSE := docker-compose

# Docker-compose commands
build:
    $(DOCKER_COMPOSE) build

up:
    $(DOCKER_COMPOSE) up -d

down:
    $(DOCKER_COMPOSE) down

restart:
    $(DOCKER_COMPOSE) restart

logs:
    $(DOCKER_COMPOSE) logs -f

# PHP composer commands
composer-install:
    $(DOCKER_COMPOSE) exec app composer install

composer-update:
    $(DOCKER_COMPOSE) exec app composer update

# Laravel artisan commands
artisan-migrate:
    $(DOCKER_COMPOSE) exec app php artisan migrate

artisan-seed:
    $(DOCKER_COMPOSE) exec app php artisan db:seed

# npm commands
npm-install:
    $(DOCKER_COMPOSE) exec app npm install

npm-run:
    $(DOCKER_COMPOSE) exec app npm run dev

# Docker clean up
clean:
    $(DOCKER_COMPOSE) down -v --remove-orphans

# Default target
.DEFAULT_GOAL := help

# Help target
help:
	@echo "Usage: make [TARGET]"
	@echo ""
	@echo "Targets:"
	@echo "  build            Build Docker containers"
	@echo "  up               Start Docker containers"
	@echo "  down             Stop Docker containers"
	@echo "  restart          Restart Docker containers"
	@echo "  logs             Display Docker container logs"
	@echo "  composer-install Install Laravel dependencies via Composer"
	@echo "  composer-update  Update Laravel dependencies via Composer"
	@echo "  artisan-migrate  Run Laravel database migrations"
	@echo "  artisan-seed     Seed Laravel database with sample data"
	@echo "  npm-install      Install npm dependencies"
	@echo "  npm-run          Build frontend assets"
	@echo "  clean            Remove Docker volumes and networks"
	@echo "  help             Display this help message"
