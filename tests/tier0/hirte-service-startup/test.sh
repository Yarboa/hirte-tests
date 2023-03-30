#!/usr/bin/bash -eux

if [[ "$(podman ps --format {{.ID}} | wc -l )"  -ne 3 ]]; then
   echo "Found less then 3 containers"
   exit 1
fi
echo "Test successful"
