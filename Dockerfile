FROM ubuntu:22.04

COPY bin /usr/bin
COPY env /usr/daring/env

# Install packages
RUN apt-get update \
&& DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata

RUN \
  apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev git unzip sudo

# Versions are for IDEA 3.0.0 - Beta.4
RUN install-python 3.9.13   # Must specify patch version
RUN install-aws-cli latest # Only latest is supported
RUN install-node 16.3.0     # Any nvm support version
RUN install-yarn latest    # Latest or apt version
RUN install-ruby 3.1.2     # Must specify patch version

CMD ["bash"]