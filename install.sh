#!/bin/bash

pip install -r requirements.txt;
cd csrc;
python setup.py install;
cd ..;
wait;
