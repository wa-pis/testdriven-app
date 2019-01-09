build-dev:
	docker-compose -f docker-compose-dev.yml build
run-dev:
	docker-compose -f docker-compose-dev.yml up -d
rebuild-dev:
	docker-compose -f docker-compose-dev.yml up -d --build
prod:
	docker-compose -f docker-compose-prod.yml build
