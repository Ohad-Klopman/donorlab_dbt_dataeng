#!/bin/bash

. dbt-env/bin/activate

export $(cat secrets.env)
export $(cat vars.env)

pip3 install -r requirements.txt

dbt clean
dbt deps