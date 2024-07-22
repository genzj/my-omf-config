# My own Oh-My-Fish configurations #

> A set of [Oh My Fish](https://github.com/oh-my-fish/oh-my-fish) configurations

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v3.1.0-007EC7.svg?style=flat-square)](http://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

## Install ##

1. install [fish shell > 3.1.0](https://fishshell.com/)

2. install [omf framework](https://github.com/oh-my-fish/oh-my-fish)

    change omf to the dev channel for fish 3.x compatibility

    ```sh
    omf channel dev
    omf update
    ```

3. install themes used by configuration:

    * [bobthefish](https://github.com/oh-my-fish/theme-bobthefish) for xterm and
    * [batman](https://github.com/oh-my-fish/theme-batman) for linux term (console)

    **NOTE** batman may crash the omf theme by putting prompt file in fish config
    path. Execute `rm ~/.config/fish/functions/fish_prompt.fish` after installing batman to fix.

4. install [nerd font](https://github.com/ryanoasis/nerd-fonts)  patched fonts for best visualization

5. *optional* install external libraries:

    * [autojump-rs](https://github.com/xen0n/autojump-rs) for quick & smart directory changing
    * [virtualfish](https://github.com/adambrenecki/virtualfish) for python virtualenv management

6. clone the configuration and replace default omf config

    ```shell
    mv ~/.config/omf ~/.config/omf-default
    git clone https://github.com/genzj/my-omf-config ~/.config/omf
    ```

## Features ##

* automatically theme switch (bobthefish for xterm and batman Linux term)
* basic color settings
* activate ssh-agent automatically
* support autojump/autojump-rs
* support virtualfish
* support mise
* easy configuration management
