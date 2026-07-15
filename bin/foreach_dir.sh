#!/bin/bash

RED='\033[0;33m'
NC='\033[0m' # No Color

START_DIR=$PWD
PROCESS_DIR=$PWD

cd ${PROCESS_DIR}
for dir in `ls -d */`;
do
    cd ${dir}
    echo -e "\n>>>>>>IN DIRECTORY: ${RED} ${dir} ${NC}<<<<<<<"
    cat ignore_dir 2>/dev/null
    if [ $? -eq 1 ]; then
        "$@"
    fi
    cd .. 
done
cd ${START_DIR}
#ls -d */ | xargs -I {} bash -c "$BASH_CMD"
