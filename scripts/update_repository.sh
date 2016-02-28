#!/bin/bash

source scripts/shared.sh
set -x

git pull --ff-only --recurse-submodules --prune
git submodule update
