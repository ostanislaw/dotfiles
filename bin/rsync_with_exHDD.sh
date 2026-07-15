#!/bin/bash

#SRC=osmc@osmc.lan:/media/SEGATE_1TB_ORICO/SYNC/
#DST=/mnt/hdd/exported/SYNC/
SRC=$1
DST=$2
echo "SRC=${SRC}"
echo "DST=${DST}"
read -p "Is it correct? [y/N] " -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
            exit 1
fi

#RSYNC_SAFE_CMD="rsync -avh --info=DEL,PROGRESS2 osmc@osmc.lan:/media/SEGATE_1TB_ORICO/SYNC/ /media/ostanislaw/TOSHIBA_2TB/SYNC/ --exclude=*audio*"
RSYNC_SAFE_CMD="rsync --omit-dir-times -avh --info=DEL,PROGRESS2 ${SRC} ${DST}"
DELETE_PARAM="--delete-delay"
RSYNC_FULL_CMD="${RSYNC_SAFE_CMD} ${DELETE_PARAM}"

#RSYNC_DROPBOX_CMD="rsync -avh --info=DEL,PROGRESS2 ~/Dropbox/ /media/ostanislaw/TOSHIBA_2TB/Dropbox_backup/ --delete-delay"
#eval "${RSYNC_DROPBOX_CMD} --dry-run"
#read -p "Synchronize Dropbox_backup? [Y/n] " -n 1 -r
#echo    # (optional) move to a new line
#if [[ ! $REPLY =~ ^[Nn]$ ]]
#then
#       eval "${RSYNC_DROPBOX_CMD}"
#fi

eval "${RSYNC_FULL_CMD} --dry-run"

read -p "Shall continue with deletions? [y/N] " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
            eval "${RSYNC_SAFE_CMD}"
        else
                    eval "${RSYNC_FULL_CMD}"
fi

