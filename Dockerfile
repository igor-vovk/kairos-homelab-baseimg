FROM quay.io/kairos/kairos-init:latest AS kairos-init

FROM ubuntu:24.04

ARG VERSION=latest

RUN --mount=type=bind,from=kairos-init,src=/kairos-init,dst=/kairos-init \
    /kairos-init -s install --version "${VERSION}"

RUN --mount=type=bind,from=kairos-init,src=/kairos-init,dst=/kairos-init \
    /kairos-init -s init --version "${VERSION}"
