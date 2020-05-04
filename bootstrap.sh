#!/usr/bin/env bash

git clone https://github.com/pallets/flask
cd flask
git checkout 1.1.2
cd examples/tutorial/
python3 -m venv venv
. venv/bin/activate
pip install -e .
export FLASK_APP=flaskr
export FLASK_ENV=development
flask init-db
flask run
pip install '.[test]'
pytest
