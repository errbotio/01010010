#!/bin/bash

source scripts/shared.sh
set -x

(cd repository && pip install .)
sudo supervisorctl restart errbot-gitter
