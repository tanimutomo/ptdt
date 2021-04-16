.SHELL=/bin/bash

release:
	poetry run python ptdt/ptdt.py
	poetry version patch
	poetry publish --build -u ${PYPI_USERNAME} -p ${PYPI_PASSWORD}
