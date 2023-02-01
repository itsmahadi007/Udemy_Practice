build:
	export DOCKER_BUILDKIT=0
	export COMPOSE_DOCKER_CLI_BUILD=0
	docker compose -f local.yml up --build -d --remove-orphans

up:
	docker compose -f local.yml up -d

down:
	docker compose -f local.yml down

show_logs:
	docker compose -f local.yml logs

migrate:
	docker compose -f local.yml run --rm api python3 manage.py migrate

make_migrations:
	docker compose -f local.yml run --rm api python3 manage.py makemigrations

collect_static:
	docker compose -f local.yml run --rm api python3 manage.py collectstatic
	--no-input --clear

superuser:
	docker compose -f local.yml run --rm api python3 manage.py createsuperuser

down-v:
	docker compose -f local.yml down -v

volume:
	docker volume inspect udemy_practice_local_postgres_data

authors-db:
	docker compose -f local.yml exec postgres psql --username=alphaogilo --dbname=authors-live

flake8:
	docker compose -f local.yml exec api flake8 .

black-check:
	docker compose -f local.yml exec api black --check --exclude=migrations .

black-diff:
	docker compose -f local.yml exec api black --diff --exclude=migrations .

black:
	docker compose -f local.yml exec api black --exclude=migrations .

isort-check:
	docker compose -f local.yml exec api isort . --check-only --diff --skip migrations --skip venv

isort-diff:
	docker compose -f local.yml exec api isort . --diff --skip migrations --skip venv

isort:
	docker compose -f local.yml exec api isort . --skip migrations --skip venv