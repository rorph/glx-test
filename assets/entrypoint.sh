#!/bin/bash

export LIBGL_DEBUG=verbose

if [ -z "$DISPLAY" ] ; then
    echo "-- Display not set, assuming :0"
    export DISPLAY=:0
fi

for j in true false; do
    export LIBGL_ALWAYS_SOFTWARE=$j
    for i in true false; do
        echo "-- Running glxgears with LIBGL_ALWAYS_INDIRECT:$LIBGL_ALWAYS_INDIRECT LIBGL_ALWAYS_SOFTWARE: $LIBGL_ALWAYS_SOFTWARE"
        export LIBGL_ALWAYS_INDIRECT=$i
        glxgears
    done
done

