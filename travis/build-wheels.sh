#!/bin/bash
set -e -x

PYTHON_PATH=/opt/python/*cp36*/
PYTHON_BIN=$PYTHON_PATH/bin/python
PIP_BIN=$PYTHON_PATH/bin/pip

$PIP_BIN install tox
cd /io/
$PYTHON_BIN -m tox
