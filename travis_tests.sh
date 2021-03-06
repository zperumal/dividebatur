#!/bin/bash

set -e

pip3 install flake8
pip3 install nose

nosetests dividebatur

flake8 --ignore=E501 dividebatur

echo "** Tests: Federal 2013 WA **"
./run_aec_fed2013_wa.sh

echo "** Tests: Federal 2016 **"
./run_aec_fed2016.sh

