#!/bin/bash

SSH_DIR=/home/vagrant/.ssh
# mkdir $SSH_DIR

VAGRANT_DIR=/vagrant

if [ -f $VAGRANT_DIR/.id_rsa ]; then
  if [ ! -f $SSH_DIR/id_rsa ]; then
    cp $VAGRANT_DIR/.id_rsa $SSH_DIR/id_rsa
    cp $VAGRANT_DIR/.id_rsa.pub $SSH_DIR/id_rsa.pub
  fi
  rm $VAGRANT_DIR/.id_rsa $VAGRANT_DIR/.id_rsa.pub
fi

chown -R vagrant $SSH_DIR
chmod -R 0700 $SSH_DIR
