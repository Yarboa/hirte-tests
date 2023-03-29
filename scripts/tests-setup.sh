#!/bin/bash

podman build -f ./scripts/Containerfile -t hirte-image .

podman run -d --net podman --rm -p 8420:8420 --name hirte-mgr \
          $(podman images *hirte-image --format {{.ID}})
podman run -d --net podman --rm --name hirte-node-bar \
          $(podman images *hirte-image --format {{.ID}})
podman run -d --net podman --rm --name hirte-node-foo \
          $(podman images *hirte-image --format {{.ID}})

