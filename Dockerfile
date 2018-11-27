#*****************************************************************************
#   Dockerfile for texlive based on Fedora
#   Created on Fri 19 Oct 2018 16:49:12 BST
#   Copyright 2018 by Till Hofmann <hofmann@kbsg.rwth-aachen.de>
#*****************************************************************************
#
#   Distributed under terms of the MIT license.
#
#*****************************************************************************

FROM fedora:latest
RUN dnf -y --nodocs install \
      file \
      git \
      grep \
      latexmk \
      make \
      openssh-clients \
      texlive-scheme-full \
    && dnf clean all
