FROM debian:13.0-slim

ENV TZ=Asia/Tokyo
RUN ln -snvf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN --mount=type=cache,target=/var/lib/apt,sharing=locked \
    --mount=type=cache,target=/var/cache/apt,sharing=locked \
    apt-get update && apt-get install --no-install-recommends -y emacs xclip git
ENTRYPOINT ["emacs"]
