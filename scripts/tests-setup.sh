#!/bin/bash

podman build -f ./containers/$CONTAINER_USED -t hirte-image .

podman network create --subnet $TEST_NET_RANGE hirte-test
podman run -d --net hirte-test --rm -p $MGR_PORT:$MGR_PORT --name hirte-mgr \
          $(podman images *hirte-image --format {{.ID}})
podman run -d --net hirte-test --rm --name hirte-node-bar \
          $(podman images *hirte-image --format {{.ID}})
podman run -d --net hirte-test --rm --name hirte-node-foo \
          $(podman images *hirte-image --format {{.ID}})
