install:
	poetry install

build:
	poetry build

publish:
	poetry publish --dry-run

package-install:
	python3 -m pip install --user dist/*.whl

lint:
	poetry run flake8 gendiff

gendiff:
	poetry run gendiff

re-install:
	pip install --user --force-reinstall dist/*.whl

pytest:
	poetry run pytest -s

test-coverage:
	poetry run pytest --cov=gendiff --cov-report xml
