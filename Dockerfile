FROM debian:11.7-slim
ARG tz Asia/Tokyo
ENV TZ $tz
RUN ln -snvf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y \
    emacs \
    xclip \
    git \
    && rm -rf /var/lib/apt/lists/*
CMD ["emacs"]
