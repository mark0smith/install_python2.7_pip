#!/usr/bin/bash

unzip -q downloads/setuptools-44.1.1.zip
python2.7 ./setuptools-44.1.1/setup.py install


unzip -q downloads/pip-20.3.4-py2.py3-none-any.whl -d ./wheels
cp downloads/pip-20.3.4-py2.py3-none-any.whl ./wheels

python2.7 ./wheels/pip-20.3.4-py2.py3-none-any.whl/pip install --no-index --find-links ./wheels/ pip --ignore-installed


python2.7 -m pip -V
