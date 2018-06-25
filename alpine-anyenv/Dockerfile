FROM alpine:latest
LABEL maintainer "atsttk84 <atsttk84@gmail.com>"

RUN apk add --no-cache git neovim zsh tmux alpine-sdk

RUN apk add --no-cache bash zlib-dev bzip2-dev openssl-dev
RUN git clone https://github.com/riywo/anyenv ~/.anyenv
COPY conf/.profile /root
SHELL ["/bin/bash", "-l", "-c"]
RUN anyenv install pyenv
RUN pyenv install 3.6.4
RUN pyenv global 3.6.4

RUN ln -sf /usr/bin/nvim /usr/bin/vi

WORKDIR /root
COPY conf/.zshrc /root

CMD /bin/zsh -l
