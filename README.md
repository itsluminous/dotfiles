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
- [asdf](Guides/asdf.md) or [mise](https://mise.jdx.dev/installing-mise.html)
---
#### Development
- [miniconda](https://docs.anaconda.com/free/miniconda/miniconda-install/)
- [Jupyter](https://jupyter.org/install)
- [vscode](https://code.visualstudio.com/docs/setup/mac)
- [IntelliJ Idea CE](https://www.jetbrains.com/idea/download/?fromIDE=&section=mac)
- [Docker](https://www.docker.com/products/docker-desktop/)
---
#### Simplifying life
- [tldr](https://formulae.brew.sh/formula/tldr) - _simpler man pages_
- [bat](https://github.com/sharkdp/bat?tab=readme-ov-file#installation) - _cat command but colourful_
- [tree](https://formulae.brew.sh/formula/tree) - _list directory in tree structure_
---
#### Tools
- [itsycal](https://www.mowglii.com/itsycal/) - _beautiful calendar with all events_
- [maccy](https://github.com/p0deje/Maccy?tab=readme-ov-file#install) - _clipboard manager_
- [hidden bar](https://github.com/dwarvesf/hidden) - _hide unwanted icons from status bar_
- [KeepingYouAwake](https://github.com/newmarcel/KeepingYouAwake) - _stop mac from sleeping, temporarily_
- [android file transfer](https://www.android.com/filetransfer/) - _copy files to/from android_
- [stats](https://github.com/exelban/stats) - _cpu/memory stats in status bar_
- [Gifski](https://github.com/sindresorhus/Gifski) - _make gif from videos_
- [noTunes](https://github.com/tombonez/noTunes) - _stop itunes or apple music from launching when bluetooth is connected_
---
#### Quick actions
- [Open in iTerm action](QuickActions/Open%20in%20iTerm.workflow/)
- [Open in VS Code action](QuickActions/Open%20with%20VS%20Code.workflow/)
- [Shortcut to show/hide desktop icons](https://www.icloud.com/shortcuts/6e227c87723649408d73f712b13f3f63)

## Other softwares
- [Mos](https://github.com/Caldis/Mos/blob/master/README.enUS.md) - _To fix mouse scroll direction_
- [VLC](http://www.videolan.org/vlc/index.html) - _Best media player_
- [MS Office](https://massgrave.dev/unsupported_products_activation.html) - _I don't know what this is_
