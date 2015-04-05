dotfiles
========

Introduction
------------

This is my personal dotfiles repository based on [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles).
Anyone can use this under the MIT License even though all settings are highly optimized just for me.

Requirements
------------

Set zsh as your login shell:

    chsh -s $(which zsh)

Also bash can use:
    chsh -s $(which bash)

Install
-------

1. Install [rcm](https://github.com/thoughtbot/rcm).

2. Execute `curl -L goo.gl/4S9v9Z | sh`.

The rest of this section is detailed information.

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install the dotfiles:

    env RCRC=$HOME/dotfiles/rcrc rcup

This command will create symlinks for config files in your home directory.
Setting the `RCRC` environment variable tells `rcup` to use standard
configuration options:

* Exclude the `README.md` and `LICENSE` files, which are part of
  the `dotfiles` repository but do not need to be symlinked in.
* Give precedence to personal overrides which by default are placed in
  `~/dotfiles-local`

You can safely run `rcup` multiple times to update:

    rcup

Testing
-------

You can safely try this out in a [docker](https://www.docker.com/) container.

    docker run -ti --rm $(docker build . | awk 'END {print $3}')

Thanks
------

Thank you, [contributors](https://github.com/thoughtbot/dotfiles/contributors)!
Also, thank you to Corey Haines, Gary Bernhardt, and others for sharing your
dotfiles and other shell scripts from which we derived inspiration for items
in this project.

License
-------

dotfiles is copyright © 2009-2015 thoughtbot. It is free software, and may be
redistributed under the terms specified in the [`LICENSE`] file.

[`LICENSE`]: /LICENSE

