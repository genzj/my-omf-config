# My own Oh-My-Fish configurations #

## Install ##

1. install the fish shell > 2.0 (https://fishshell.com/)

2. install omf framework (https://github.com/oh-my-fish/oh-my-fish)

3. install themes used by configuration:

    * [bobthefish](https://github.com/oh-my-fish/theme-bobthefish) for xterm and
    * [batman](https://github.com/oh-my-fish/theme-batman) for linux term (console)

4. install nerd font for best visualization: https://github.com/ryanoasis/nerd-fonts

5. *optional* install external libraries:

    * [autojump](https://github.com/wting/autojump) for quick & smart directory changing
    * [virtualfish](https://github.com/adambrenecki/virtualfish) for python virtualenv management

6. clone the configuration and replace default omf config

```shell
mv ~/.config/omf ~/.config/omf-default
git clone https://github.com/genzj/my-omf-config ~/.config/omf
```

## Features ##

* different theme for xterm and Linux term
* basic color settings
* activate ssh-agent automatically
* support autojump
* support virtualfish

