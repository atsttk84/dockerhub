FROM alpine:latest
LABEL maintainer "atsttk84 <atsttk84@gmail.com>"

RUN apk add --no-cache git neovim zsh tmux sudo alpine-sdk

RUN apk add --no-cache bash zlib-dev bzip2-dev openssl-dev boost-dev

RUN adduser -D alpine \
  && echo "alpine ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

WORKDIR /usr/local
RUN git clone https://github.com/atsttk84/apk.git \
  && cp apk/key/*.rsa.pub /etc/apk/keys \
  && echo '/usr/local/apk' >> /etc/apk/repositories \
  && apk add mecab mecab-ipadic

RUN ln -sf /usr/bin/nvim /usr/bin/vi

COPY conf/.zshrc /root
COPY conf/.zshrc /home/alpine

USER alpine
WORKDIR /home/alpine
CMD /bin/zsh -l
