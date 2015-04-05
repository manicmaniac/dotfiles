FROM debian:testing
MAINTAINER Ryosuke Ito <rito.0305@gmail.com>

WORKDIR /root
RUN apt-get update && apt-get install -y git tmux vim wget zsh gcc make && apt-get autoremove -y
RUN wget 'https://thoughtbot.github.io/rcm/debs/rcm_1.2.3-1_all.deb' && dpkg -i 'rcm_1.2.3-1_all.deb' && rm -f 'rcm_1.2.3-1_all.deb'
COPY . dotfiles
RUN mkdir .dotfiles.original && mv .bashrc .profile .dotfiles.original
RUN env RCRC=dotfiles/rcrc rcup || true
CMD '/bin/bash'

