#!/bin/bash

set -e

BRANCH_NAME=$1
REPO_DIR=proad_$(echo ${BRANCH_NAME} | tr '/' '_')

[ "${BRANCH_NAME}" == "" ] && { echo "error: Usage: $0 <BRANCH_NAME>"; exit 1; }

cd ~/projects/PROAD

[ -d ${REPO_DIR} ] && { echo "error: Directory ${BRANCH_NAME} already exists"; exit 1; }

echo "Cloning the branch name ${BRANCH_NAME}"

git clone ssh://git@zf-git.emea.zf-world.com:7999/proadsw/proadapplicationsw.git -b ${BRANCH_NAME} ${REPO_DIR}

cd ${REPO_DIR}

~/bin/utilities/raven_tools/vscode_config/vscode_latest/link_devcontainer.sh

d
#raven_create_container_latest.sh --god

