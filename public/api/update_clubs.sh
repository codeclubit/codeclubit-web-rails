#!/bin/bash

wget -O clubs.tmp.json --no-check-certificate https://api.codeclubworld.org/clubs?limit=10000

json_reformat -m < clubs.tmp.json > clubs.json

rm -f clubs.tmp.json



