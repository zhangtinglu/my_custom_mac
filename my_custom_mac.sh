#!/usr/bin/env bash
# 安装brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# 使用brew安装软件，brew cask能一次安装好多软件~~
brew cask install git iterm2 zsh mysql google-chrome alfred dash dropbox qlmarkdown qlcolorcode mackup anaconda macvim oh-my-zsh 

# 软件配置还原，很重要啊
mackup list
mackup backup

