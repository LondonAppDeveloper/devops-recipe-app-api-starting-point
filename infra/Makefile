.PHONY: login init fmt	

# login to the aws account using aws-vault
login:
	aws-vault exec dnd.demo --duration=8h

# Initialize the terraform 
init:
	docker compose run --rm terraform -chdir=setup init -migrate-state

fmt:
	docker compose run --rm terraform -chdir=setup fmt

val:
	docker compose run --rm terraform -chdir=setup validate

plan:
	docker compose run --rm terraform -chdir=setup plan

apply:
	docker compose run --rm terraform -chdir=setup apply

output:
	docker compose run --rm terraform -chdir=setup output

secret:
	docker compose run --rm terraform -chdir=setup output cd_user_access_key_secret
