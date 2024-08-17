# Create a phony
.PHONY: create-admin

# Creates the superuser for the application in Development environment
create-admin-dev:
	docker compose run --rm app sh -c "python manage.py createsuperuser"

# Creates the superuser for the application in Production environment
create-admin-prod:
	docker compose -f docker-compose-deploy.yml run --rm app sh -c "python manage.py createsuperuser"

# Removes the volumes of the application
rm-volumes:
	docker compose -f docker-compose-deploy.yml down --volumes
	docker compose down --volumes

# Build the deocker production image
build-prod:
	docker compose -f docker-compose-deploy.yml build

# Deploys the application as producation environment
deploy-prod:
	docker compose -f docker-compose-deploy.yml up

# Deploys the application as development environment
deploy-dev: 
	docker compose up

# Down the application in development environment
down-dev:
	docker compose down

# Down the application in production environment
down-prod:
	docker compose -f docker-compose-deploy.yml down
