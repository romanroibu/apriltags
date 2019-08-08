#!/bin/bash
set -e -x

PYTHON_PATH=/opt/python/*cp36*/
PYTHON_BIN=$PYTHON_PATH/bin/python
PIP_BIN=$PYTHON_PATH/bin/pip

cd /io/

make clean
$PIP_BIN install tox
$PIP_BIN install -r requirements_dev.txt
$PYTHON_BIN -m tox
