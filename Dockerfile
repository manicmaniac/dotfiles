FROM debian:bullseye
MAINTAINER Ryosuke Ito <rito.0305@gmail.com>

WORKDIR /root
RUN apt-get update && apt-get install -y git tmux tig vim wget zsh gcc make editorconfig rcm && apt-get autoremove -y
ADD . dotfiles
RUN mkdir .dotfiles.original && mv .bashrc .profile .dotfiles.original
RUN env USER=root RCRC=dotfiles/rcrc rcup || true
RUN /usr/bin/chsh -s /usr/bin/zsh
ENTRYPOINT ["/usr/bin/zsh"]
