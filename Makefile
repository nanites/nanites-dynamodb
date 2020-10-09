help:
	@echo "Usage:"
	@echo "    make help        display help message"
	@echo "    make setup       create virtual environment and fetch production dependencies"
	@echo "    make dev         create virtual environment and fetch production and development dependencies"
	@echo "    make activate    acces the vritual environment"
	@echo "    make test        run test suite"
	@echo "    exit             exit the virtual environment"

setup:
	pip install pipenv
	pipenv sync --three

dev:
	pip install pipenv
	pipenv sync --three --dev

activate:
	pipenv shell

test:
	pipenv run pytest --cov=nanites_dynamodb

coverage:
	pipenv run coveralls

.PHONY: help activate test
