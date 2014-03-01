#!/bin/bash

echo "Installing vagrant-omnibus plugin..."
vagrant plugin install vagrant-omnibus
echo "done."

echo "Copying ssh key for vagrant vm..."
cp ~/.ssh/id_rsa .id_rsa
cp ~/.ssh/id_rsa.pub .id_rsa.pub
echo "done."

echo "Preparing cookbooks..."
cd vagrant/launchpad
berks install --path ../cookbooks
echo "done."
cd ../..


