#!/bin/bash
set -e

TAG=${TAG:-z3n666/glx-test:latest}
ROOT_IMAGE=${ROOT_IMAGE:-nvcr.io/nvidia/deepstream:4.0.2-19.12-devel}

docker build assets/ -f Dockerfile -t $TAG --build-arg ROOT_IMAGE=${ROOT_IMAGE}
