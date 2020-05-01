#! usr/bin/bash

echo "generating ssh key"
ssh-keygen

echo "enter to which host you'd like to copy the key username@host"
read remote
ssh-copy-id $remote


echo "Logging into $remote"
ssh $remote