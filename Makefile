# Create a phony
.PHONY: create-admin

create-admin:
	docker compose run --rm app sh -c "python manage.py createsuperuser"
