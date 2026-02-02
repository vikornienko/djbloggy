.PHONY: rs mm mig csu sa

rs:
	uv run djbloggy/manage.py runserver

mm:
	uv run djbloggy/manage.py makemigrations

mig:
	uv run djbloggy/manage.py migrate

csu:
	uv run djbloggy/manage.py createsuperuser

sa:
	@echo -n "Enter app name: "; read app_name; uv run djbloggy/manage.py startapp $$app_name
