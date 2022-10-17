FROM ubuntu:22.04

COPY bin /usr/bin
COPY env /usr/daring/env

# Update Ubuntu
RUN \
  apt-get update && \
  apt-get -y upgrade

# Install packages
RUN \
  apt-get install -y curl && \
  apt-get install -y git

# Versions are for IDEA 3.0.0 - Beta.4
RUN install-python 3.9.13   # Must specify patch version
# RUN install-aws-cli latest # Only latest is supported
# RUN install-node 16.3.0     # Any nvm support version
# RUN install-yarn latest    # Latest or apt version
# RUN install-ruby 3.1.2     # Must specify patch version

CMD ["bash"]