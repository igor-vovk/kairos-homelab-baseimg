FROM quay.io/kairos/kairos-init:latest AS kairos-init

FROM ghcr.io/kairos-io/hadron:v0.1.1 AS base

ARG VERSION

RUN --mount=type=bind,from=kairos-init,src=/kairos-init,dst=/kairos-init \
    eval /kairos-init -l debug -s install --model generic --provider k3s --version "${VERSION}" && \
    eval /kairos-init -l debug -s init --model generic --provider k3s --version "${VERSION}"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        qemu-guest-agent \
        open-iscsi \
    && rm -rf /var/lib/apt/lists/*
