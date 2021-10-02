COMPOSE=docker-compose --env-file .env
PROXY=$(COMPOSE) -f proxy/docker-compose.yml
BACKEND=$(COMPOSE) -f backend/docker-compose.yml

help: ## Print this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

setup: ## Initialize setup
	docker network create reverse-proxy | echo ''

start: setup start-proxy start-backend ## Start all containers

start-proxy: ## Start reverse proxy to expose services
	$(PROXY) up -d

start-backend: ## Start containers for backend service
	$(BACKEND) up -d

stop: ## Stop all containers
	$(PROXY) down
	$(BACKEND) down

purge: ## Purge all containers ant their data
	$(PROXY) down -v
	$(BACKEND) down -v

shell-backend: ## Start shell on backend node
	$(BACKEND) exec app bash
