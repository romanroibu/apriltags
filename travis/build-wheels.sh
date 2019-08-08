#!/bin/bash
set -e -x

pip install tox
tox /io/
