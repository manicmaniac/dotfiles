FROM debian:trixie
LABEL maintainer="Ryosuke Ito <rito.0305@gmail.com>"

RUN apt-get update && apt-get install -y git tmux tig vim wget zsh gcc make editorconfig rcm ruby && apt-get autoremove -y
RUN gem install --no-document bundler

RUN groupadd -g 1001 user && useradd -u 1001 -g user -d /home/user -m -s /usr/bin/zsh user

ADD --chown=user:user . /home/user/dotfiles

USER user
WORKDIR /home/user

ENV BUNDLE_PATH=/home/user/dotfiles/vendor/bundle
RUN bundle install --gemfile=/home/user/dotfiles/Gemfile
RUN mkdir .dotfiles.original && mv .bashrc .profile .dotfiles.original
ENV RCRC=/home/user/dotfiles/rcrc
RUN rcup || true

ENTRYPOINT ["/usr/bin/zsh"]
