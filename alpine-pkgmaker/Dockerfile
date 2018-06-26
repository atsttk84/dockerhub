FROM alpine:latest
LABEL maintainer "atsttk84 <atsttk84@gmail.com>"

RUN apk add --no-cache git neovim zsh tmux sudo alpine-sdk

RUN adduser -D alpine \
  && addgroup alpine abuild \
  && echo "alpine ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
  && mkdir -p /var/cache/distfiles \
  && chgrp abuild /var/cache/distfiles \
  && chmod g+w /var/cache/distfiles \
  && sudo -u alpine abuild-keygen -a -i

RUN ln -sf /usr/bin/nvim /usr/bin/vi

WORKDIR /root
COPY conf/.zshrc /root

CMD /bin/zsh -l
