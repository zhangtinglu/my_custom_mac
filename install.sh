# 新电脑的配置，最好能做成傻瓜式的，每次都是同样的配置，真的很崩溃，如果有一个u盘或者移动硬盘把常用软件存储起来，同时最好能备份到百度云等云储存上，接着就是各种配置的详细介绍，做成这个自动化脚本
# 需要自行准备的软件Dropbox
# 开发电脑必备软件  brew mackup Cisco shadowsockets dash iterm2 zsh oh-my-zsh pycharm docker
# 安装brew，并修改brew config到国内
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
cd "$(brew --repo)"
git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git
brew update

# 安装mackup用于对电脑上的配置一键恢复，配合icloud来做到配置的一键恢复
brew install mackup
# 使用下面的操作来配置mackup
# vim ~/.mackup.cfg
# [storage]
# engine = icloud
mackup restore

# dash在preference  -- snippets -- save 保存原来的到icloud，然后在新电脑上open就行
brew install dash

# 锁屏时一个好习惯，鼠标滑到屏幕一角即可锁屏，另一种方法dash 输入 lock或者sleep
# system preferences -> desktop & screen saver -> screen saver -> hot corners

# 安装cisco，这时公司的vpn，见各种新人指南，还有大象

# 安装自己的VPN，因为公司对谷歌真的是太不友好了，自己准备一个VPN纵总是好的
brew install Shadowsockets

# 安装zsh，终端神奇，顺便配置vim，这里我都是直接存在icloud上，使用mackup就可以一键恢复了
brew cask install iterm2 zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 还有一个叫做Anacanda的软件对python的支持贼好，国内的直接直接使用清华的源，参考：https://mirror.tuna.tsinghua.edu.cn/help/anaconda/

#  Pycharm 这个是非常重要的工具,这个在官网下载，激活直接参考http://xclient.info/a/f0b9738a-36fd-8a97-a966-0d3db497092d.html?t=aa5bd4eb3990883e094d1f5abdc9fb1a36307e21，亲测有效。感谢万能的各位啊~~~

# 安装docker，这是一个必备的神奇，大家应该没有意见，这里折腾一个MySQL5.7的主从以及容器管理工具
docker run -d -p 9000:9000 --restart always -v /var/run/docker.sock:/var/run/docker.sock -v ~/dockervolumn/portainer:/data  portainer/portainer

# 安装evernote，最好所有的笔记能放在一个地方，OneNote  有道云笔记，Evernote，现在就Evernotes，直接下载安装就行


function installHomebrewM1()
{
    /bin/bash -c "$(curl -fsSL https://gitee.com/ineo6/homebrew-install/raw/master/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/luzhangting/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
}


