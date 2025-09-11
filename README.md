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
#### Development
- [miniconda](https://docs.anaconda.com/free/miniconda/miniconda-install/)
- [Jupyter](https://jupyter.org/install)
- [vscode](https://code.visualstudio.com/docs/setup/mac)
- [IntelliJ Idea CE](https://www.jetbrains.com/idea/download/?fromIDE=&section=mac)
- [Docker](https://www.docker.com/products/docker-desktop/)
---
#### Simplifying life
- [tldr](https://formulae.brew.sh/formula/tldr)
- [bat](https://github.com/sharkdp/bat?tab=readme-ov-file#installation)
- [tree](https://formulae.brew.sh/formula/tree)
---
#### Tools
- [itsycal](https://www.mowglii.com/itsycal/)
- [maccy](https://github.com/p0deje/Maccy?tab=readme-ov-file#install)
- [hidden bar](https://github.com/dwarvesf/hidden)
- [KeepingYouAwake](https://github.com/newmarcel/KeepingYouAwake)
- [android file transfer](https://www.android.com/filetransfer/)
- [stats](https://github.com/exelban/stats)
- [Gifski](https://github.com/sindresorhus/Gifski)
---
#### Quick actions
- [Open in iTerm action](QuickActions/Open%20in%20iTerm.workflow/)
- [Open in VS Code action](QuickActions/Open%20with%20VS%20Code.workflow/)
- [Shortcut to show/hide desktop icons](https://www.icloud.com/shortcuts/6e227c87723649408d73f712b13f3f63)

## Other softwares
- [Mos](https://github.com/Caldis/Mos/blob/master/README.enUS.md) - To fix mouse scroll direction
- [VLC](http://www.videolan.org/vlc/index.html)
- [MS Office](https://massgrave.dev/unsupported_products_activation.html)
