# GLX-Gears tester

Runs GLX-Gears within a container in a few different modes with debug mode enabled.

This is intended to troubleshoot issues when running GUI dependent dockers.

Running on x86:

```
docker run --runtime ${RUNTIME:-nvidia} \
    --rm -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=${DISPLAY:-:0} \
    ${TAG:-z3n666/glx-test:latest}
```
