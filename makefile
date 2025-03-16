.PHONY: up down help

help: ## show commands
	@echo 'Usage: make [TARGET]'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_-]+:.*?## / {printf "  %-10s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

default: up

up: ## Start containers
	docker-compose up

down: ## Stop and remove containers, networks, images, and volumes
	docker-compose down 