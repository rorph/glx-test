#!/bin/bash

docker run --runtime ${RUNTIME:-nvidia} \
    --rm -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=${DISPLAY:-:0} \
    ${TAG:-z3n666/glx-test:latest}