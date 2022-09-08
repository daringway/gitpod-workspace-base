FROM gitpod/workspace-base

COPY bin /usr/bin
COPY env /usr/daring/env

RUN sudo /usr/bin/update-alternatives --install /usr/bin/www-browser www-browser /usr/bin/gp-www-browser  210

CMD ["bash"]
