# docker-debian-emacs

Emacs on debian container.

# Usage

``` bash
make
docker run --rm -it docker-debian-emacs:latest
```

# XQuartz (macOS)

Manipulate emacs GUI launched on the docker container from the host.

1. Install XQuartz from https://www.xquartz.org/
1. Launch XQuartz
1. Check `Allow connections from network clients`
1. Check `Option keys send Alt_L and Alt_R`
1. Terminate and launch XQuartz
1. `xhost - && xhost + localhost`
1. `docker run --rm -it -e "DISPLAY=host.docker.internal:0" docker-debian-emacs:latest`
