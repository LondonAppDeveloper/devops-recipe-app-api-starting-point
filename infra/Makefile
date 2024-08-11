.PHONY: login init fmt	

# login to the aws account using aws-vault
login:
	aws-vault exec dnd.demo --duration=8h

# Initialize the terraform 
init:
	docker compose run --rm terraform -chdir=deploy init

fmt:
	docker compose run --rm terraform -chdir=deploy fmt

val:
	docker compose run --rm terraform -chdir=deploy validate
