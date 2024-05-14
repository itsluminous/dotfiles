## To have two git configs
- Create two files called `.gitconfig-personal` & `.gitconfig-work`
- Include this snippet in `.gitconfig`
```
[includeIf "gitdir:~/personal/"]
  path = ~/.gitconfig-personal
[includeIf "gitdir:~/repo/"]
  path = ~/.gitconfig-work
```
- Make sure to have `[user]` section only in specific gitconfigs, not in main one. 

## Softwares to install when setting up fresh
- [brew](https://brew.sh/)
- iterm : ``brew install iterm2``
- zsh : ``brew install zsh``
- [oh my zsh](https://ohmyz.sh/#install)
- [asdf](https://asdf-vm.com/guide/getting-started.html)
---
- [miniconda](https://docs.anaconda.com/free/miniconda/miniconda-install/)
- [Jupyter](https://jupyter.org/install)
- [vscode](https://code.visualstudio.com/docs/setup/mac)
- [IntelliJ Idea CE](https://www.jetbrains.com/idea/download/?fromIDE=&section=mac)
- [Docker](https://www.docker.com/products/docker-desktop/)
---
- [itsycal](https://www.mowglii.com/itsycal/)
- [maccy](https://github.com/p0deje/Maccy?tab=readme-ov-file#install)
- [amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704)
- [android file transfer](https://www.android.com/filetransfer/)

## Oh my zsh plugins
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
- [autojump](https://github.com/wting/autojump)
- [cmdtime](https://github.com/tom-auger/cmdtime)

## Other softwares
- [MS Office](https://massgrave.dev/unsupported_products_activation.html)
- [VLC](http://www.videolan.org/vlc/index.html)