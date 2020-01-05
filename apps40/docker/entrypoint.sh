#!/usr/bin/env bash
set -e

[[ -z "$ENTRYPOINT" ]] && export ENTRYPOINT='entrypoint.sh'
[[ -z "$BRANCH" ]] && export BRANCH='master'
[[ -z "$REPOSITORY" ]] && echo "REPOSITORY not set" && exit 1
git clone --branch $BRANCH $REPOSITORY workspace/
cd workspace/
bash "$ENTRYPOINT"
