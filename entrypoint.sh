#!/bin/sh -l

SSHPATH=${HOME}/.ssh
mkdir -p $SSHPATH
echo "$DEPLOY_KEY" > "${SSHPATH}/deploy_key"
chmod 600 "${SSHPATH}/deploy_key"
sh -c "rsync $OPTION -e 'ssh -i ${SSHPATH}/deploy_key -o StrictHostKeyChecking=no' $GITHUB_WORKSPACE/$FOLDER $SERVER_DEST"
