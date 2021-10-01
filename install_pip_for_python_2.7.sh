#!/usr/bin/bash

sudo apt-get install -y software-properties-common gcc

mkdir install_python2.7_pip
cd install_python2.7_pip

mkdir downloads && cd downloads
wget https://files.pythonhosted.org/packages/b2/40/4e00501c204b457f10fe410da0c97537214b2265247bc9a5bc6edd55b9e4/setuptools-44.1.1.zip
wget https://files.pythonhosted.org/packages/27/79/8a850fe3496446ff0d584327ae44e7500daf6764ca1a382d2d02789accf7/pip-20.3.4-py2.py3-none-any.whl
cd ..


unzip -q downloads/setuptools-44.1.1.zip
python2.7 ./setuptools-44.1.1/setup.py install


unzip -q downloads/pip-20.3.4-py2.py3-none-any.whl -d ./wheels
cp downloads/pip-20.3.4-py2.py3-none-any.whl ./wheels

python2.7 ./wheels/pip-20.3.4-py2.py3-none-any.whl/pip install --no-index --find-links ./wheels/ pip --ignore-installed


python2.7 -m pip -V

cd ..
