#!/bin/bash

src=/home/ubuntu/devops/ShellScripts
tgt=/home/ubuntu/devops/backup_folder
filename=$(date +'%d-%m-%Y-%H-%M-%S').tar.gz

echo "backup started for $filename"
tar -cvf $tgt/$filename $src
echo "backup completed"

