# docker-debian-emacs

Emacs on debian container.

# Usage

``` bash
make
docker run --rm -it docker-debian-emacs:latest
```

# Xquarts (macOS)

Manipulate emacs GUI launched on the docker container from the host.

1. Install Xquarts from https://www.xquartz.org/
1. Launch Xquarts
1. Check `Allow connections from network clients`
1. Check `Option keys send Alt_L and Alt_R`
1. Terminate and launch Xquarts
1. `xhost - && xhost + localhost`
1. `docker run --rm -it -e "DISPLAY=host.docker.internal:0" docker-debian-emacs:latest`
