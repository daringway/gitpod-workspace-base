# gitpod-workspace-base

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

