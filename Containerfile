FROM quay.io/fedora/fedora-bootc:44

RUN set -xeuo pipefail && \
    dnf -y install @gnome-desktop && \
    dnf clean all && \
    rm /var/{log,cache,lib}/* -rf && \
    bootc container lint
