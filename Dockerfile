ARG ROOT_IMAGE=nvcr.io/nvidia/deepstream:4.0.2-19.12-devel
FROM $ROOT_IMAGE

#SHELL ["/bin/bash", "-c"]

ADD entrypoint.sh /opt/entrypoint.sh

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -y -qq mesa-utils && \
    chmod +x /opt/entrypoint.sh && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/opt/entrypoint.sh" ]