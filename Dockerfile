FROM quay.io/coreos-assembler/coreos-assembler:master

LABEL maintainer="Ben Howard <me@muggle.dev>"

ENV BUILDER_VERSION 1.0

LABEL io.k8s.description="CoreOS Assembler Builder" \
      io.k8s.display-name="coreos-assembler-builder" \
      io.openshift.tags="coreos-assembler-builder,20200904"

USER root
COPY ./s2i/bin/ /usr/libexec/s2i

USER 1001
