#!/bin/bash

source scripts/shared.sh
set -x

(cd repository && pip install --upgrade .)
sudo supervisorctl restart errbot-gitter
