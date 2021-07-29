#!/usr/bin/sh -eux

uname=$USER
uid=`id -u`
gid=`id -g`
xauth_token=`xauth list | awk '{print $3}'`

if [ -f ./.env ]; then
    rm .env
fi

echo "UNAME=$uname" | tee .env
echo "UID=$uid" | tee -a .env
echo "GID=$gid" | tee -a .env
echo "XAUTH_TOKEN=$xauth_token" | tee -a .env

echo "Done!"
