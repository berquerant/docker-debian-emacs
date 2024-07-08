FROM debian:12.6-slim
ARG tz Asia/Tokyo
ENV TZ $tz
RUN ln -snvf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install --no-install-recommends -y \
    emacs \
    xclip \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["emacs"]
