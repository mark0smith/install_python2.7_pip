#!/usr/bin/bash

unzip -q downloads/setuptools-44.1.1.zip
cd setuptools-44.1.1
python2.7 bootstrap.py
python2.7 setup.py install --user
cd ..


unzip -q downloads/pip-20.3.4-py2.py3-none-any.whl -d ./wheels
cp downloads/pip-20.3.4-py2.py3-none-any.whl ./wheels

python2.7 ./wheels/pip-20.3.4-py2.py3-none-any.whl/pip install --no-index --find-links ./wheels/ pip --ignore-installed --user


python2.7 -m pip -V

