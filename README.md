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
- [oh my zsh](Guides/oh-my-zsh.md)
- [asdf](Guides/asdf.md)
---
- [miniconda](https://docs.anaconda.com/free/miniconda/miniconda-install/)
- [Jupyter](https://jupyter.org/install)
- [vscode](https://code.visualstudio.com/docs/setup/mac)
- [IntelliJ Idea CE](https://www.jetbrains.com/idea/download/?fromIDE=&section=mac)
- [Docker](https://www.docker.com/products/docker-desktop/)
---
- [itsycal](https://www.mowglii.com/itsycal/)
- [maccy](https://github.com/p0deje/Maccy?tab=readme-ov-file#install)
- [KeepingYouAwake](https://github.com/newmarcel/KeepingYouAwake)
- [android file transfer](https://www.android.com/filetransfer/)
- [stats](https://github.com/exelban/stats)
---
- [Open in iTerm action](QuickActions/Open%20in%20iTerm.workflow/)
- [Open in VS Code action](QuickActions/Open%20with%20VS%20Code.workflow/)

## Other softwares
- [MS Office](https://massgrave.dev/unsupported_products_activation.html)
- [VLC](http://www.videolan.org/vlc/index.html)