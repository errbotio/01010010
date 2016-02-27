#!/bin/bash

source scripts/shared.sh

usage() {
	>&2 echo 'Usage: update_submodules.sh [--publish]'
	exit 1
}

git_commit_submodules() {
	git commit repository extra_backends --message "Update tracked submodules"
	return $?
}


if [[ $# -eq 0 ]]; then
	PUBLISH=0
elif [[ $# -eq 1 && $1 == "--publish" ]]; then
	PUBLISH=1
else
	usage
fi


echo "Updating submodules.."
git submodule update --remote

git_commit_submodules || { echo "No changes" && exit 0 ; }

if [[ $PUBLISH -eq 1 ]]; then
	echo "--publish specified, pushing to origin"
	git push origin master
fi
echo "Submodules updated successfully"
