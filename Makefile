dev-build:
	docker-compose -f docker-compose-dev.yml build
dev-run:
	docker-compose -f docker-compose-dev.yml up -d
dev-rebuild:
	docker-compose -f docker-compose-dev.yml up -d --build
dev-tests:
	docker-compose -f docker-compose-dev.yml run users python manage.py test
dev-recreate-db:
	docker-compose -f docker-compose-dev.yml run users python manage.py recreate-db
dev-seed-db:
	docker-compose -f docker-compose-dev.yml run users python manage.py seed-db
dev-shell:
	docker-compose -f docker-compose-dev.yml run users flask shell


prod-build:
	docker-compose -f docker-compose-prod.yml build
prod-recreate-db:
	docker-compose -f docker-compose-prod.yml run users python manage.py recreate-db
prod-seed-db:
	docker-compose -f docker-compose-prod.yml run users python manage.py seed-db
prod-test:
	docker-compose -f docker-compose-prod.yml run users python manage.py test

# https://docs.docker.com/machine/drivers/generic/
docker-machine:
	docker-machine create \
	  --driver generic \
	  --generic-ip-address=193.124.206.35 \
	  --generic-ssh-key ~/.ssh/id_rsa \
	  testdriven-prod
docker-machine-activate:
	eval $(docker-machine env testdriven-prod)

