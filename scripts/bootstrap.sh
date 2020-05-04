#!/usr/bin/env bash

if [ -f "/usr/bin/yum" ]; then
    /usr/bin/yum install -y python3-venv git
elif [[ -f "/usr/bin/apt-get" ]]; then
    /usr/bin/apt-get install -y python3-venv git
fi
git clone https://github.com/pallets/flask
cd flask || exit 1
git checkout 1.1.2
cd examples/tutorial/ || exit 2
python3 -m venv venv
# shellcheck disable=SC1091
source venv/bin/activate
pip install -e .
export FLASK_APP=flaskr
export FLASK_ENV=development
flask init-db
flask run &
pip install '.[test]'
pytest
