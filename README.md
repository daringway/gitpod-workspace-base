# DaringWay GitPod Base Workspace

This is a base dockerfile use to created GitPod Workspaces Dev Environments that are pinned to specific versions of software.  Documentation on how to use this dockerfile is in the associated [gitpod template](https://github.com/daringway/gitpod-template) repo.

# HowTo 

See [DaringWay GitPod Workspace Template](https://github.com/daringway/gitpod-template) on how to use.

# Testing
See [trying out your dockerfile](https://www.gitpod.io/docs/config-docker) for details.
```
docker build -f Dockerfile -t gitpod-dockerfile-test .
docker run -v $(pwd)/test:/test -it gitpod-dockerfile-test  /test/all
```

Interactive check dockerfile after build
```
docker run -v $(pwd)/test:/test -it gitpod-dockerfile-test  bash
```

