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

WORKDIR /home/alpine
COPY apkbuild /home/alpine/apkbuild
RUN chown -R alpine:alpine /home/alpine
WORKDIR /home/alpine/apkbuild/mecab
USER alpine
RUN abuild check && abuild -r 
USER root
RUN echo '/home/alpine/packages/apkbuild' >> /etc/apk/repositories
USER alpine
WORKDIR /home/alpine/apkbuild/mecab-ipadic
RUN abuild check && abuild -r 

CMD /bin/zsh -l
