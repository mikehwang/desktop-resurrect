#!/bin/bash

WHOAMI="$(whoami)"

if [ "$WHOAMI" != "root" ]; then
    echo "Must sudo or be root to run this script."
    exit 1
fi

TARGET_DIR="/tmp/redux_init"

mkdir /tmp/redux_init
chdir /tmp/redux_init

apt-get install aptitude tree tmux vim
apt-get install liberror-perl git

# Install Chrome
wget -P $TARGET_DIR https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt-get install libindicator7 libappindicator1
dpkg -i $TARGET_DIR/google-chrome*.deb
