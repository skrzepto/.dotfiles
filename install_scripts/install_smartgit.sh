#!/bin/bash
cd ~/Downloads
smartgit_version=7_1_3
if [ -e ~/Downloads/smartgit-linux-$smartgit_version.tar.gz ]; then
	echo 'tar exists'
else
	wget http://www.syntevo.com/static/smart/download/smartgit/smartgit-linux-$smartgit_version.tar.gz
	# echo 'tar not found'
fi

mkdir ~/Apps
mkdir ~/Apps/smartgit

FILE=""
DIR=~/Apps/smartgit
# init
# look for empty dir 
if [ "$(ls -A $DIR)" ]; then
     echo "Take action $DIR is not Empty"
     rm -r $DIR
else
    echo "$DIR is Empty"
fi
cd ~/Downloads
tar -xzf smartgit-linux-7_1_3.tar.gz -C ~/Apps/
sudo rm /bin/smartgit
sudo ln -s ~/Apps/smartgit/bin/smartgit.sh /bin/smartgit

