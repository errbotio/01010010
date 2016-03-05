#!/bin/bash

source scripts/shared.sh
set -x

(cd repository && pip install --upgrade .)
sudo supervisorctl restart errbot-gitter

# supervisorctl doesn't exit with a non-zero code when process fails to start.
# See https://github.com/Supervisor/supervisor/issues/24
sudo supervisorctl status errbot-gitter | grep --quiet RUNNING
exit $?
