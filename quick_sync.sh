#!/bin/bash -i
# Zeon Quick sync Script V1.2 for Ubuntu 18.04 LTS
# (c) 2019 by Pubfred for ZEON
#
# Script will attempt to download zeon_blocks_385000.tar.gz
# from Google Drive and copy blocks in ~/.zeon folder .
#
# Usage:
# bash quick_sync.sh
#



function gdrive_download () {
CONFIRM=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate "https://docs.google.com/uc?export=download&id=$1" -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$CONFIRM&id=$1" -O $2
rm -rf /tmp/cookies.txt
}


zeon-cli stop

cd ~/.zeon

gdrive_download 1ztyhwev0_vANRIF6WA8xVV95pyg1TonQ zeon_blocks_last.tar.gz

sudo tar -xvf  ~/.zeon/zeon_blocks_last.tar.gz



