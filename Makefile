.SHELL=/bin/bash

release:
	lenv .env
	poetry run python distortion/distortion.py
	poetry version patch
	poetry publish --build -u ${PYPI_USERNAME} -p ${PYPI_PASSWORD}
