FROM quay.io/kairos/kairos-init:latest AS kairos-init

FROM debian:bookworm AS base

ENV DEBIAN_FRONTEND=noninteractive

ARG VERSION=v0.1.0

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        qemu-guest-agent \
        open-iscsi \
    && rm -rf /var/lib/apt/lists/*

RUN --mount=type=bind,from=kairos-init,src=/kairos-init,dst=/kairos-init \
    eval /kairos-init -l debug -s install --model generic --provider k3s --version "${VERSION}" && \
    eval /kairos-init -l debug -s init --model generic --provider k3s --version "${VERSION}"
