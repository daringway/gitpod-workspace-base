FROM gitpod/workspace-base

COPY bin /usr/bin
COPY env /usr/daring/env

CMD ["bash"]
