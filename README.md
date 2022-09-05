# gitpod-workspace-base

# Testing
See [trying out your dockerfile](https://www.gitpod.io/docs/config-docker) for details.
```
docker build -f Dockerfile -t gitpod-dockerfile-test .
docker run -it gitpod-dockerfile-test bash
```

Test the following installers from docker run
```
export ENV_AWS_CLI_VERSION=latest
export ENV_NODE_VERSION=16.16
export ENV_YARN_VERSION=latest
env-install
```
