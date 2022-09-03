FROM gitpod/workspace-base

# Install nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Install node
ENV NODE_VERSION 16

RUN \
  /bin/bash -c 'source $HOME/.nvm/nvm.sh && \
  nvm install ${NODE_VERSION} && \
  nvm use $NODE_VERSION && \
  nvm alias default ${NODE_VERSION}'

# Install aws cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN sudo ./aws/install
RUN rm -r awscliv2.zip ./aws

WORKDIR /usr

COPY bin $WORKDIR/bin
RUN sudo /usr/bin/update-alternatives --install /usr/bin/www-browser www-browser $WORKDIR/bin/gp-www-browser  210

COPY env $WORKDIR/daring/env

CMD ["bash"]
