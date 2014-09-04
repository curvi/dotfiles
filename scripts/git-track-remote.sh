#!/bin/sh

# git clone $pathtorepo
# cd repo
# git remote rename origin usb

remote=usb;
for brname in `
  git branch -r | grep $remote | grep -v master | grep -v HEAD | awk '{gsub(/[^\/]+\//,"",$1); print $1}'
`; do
  git branch --track $brname $remote/$brname;
done
