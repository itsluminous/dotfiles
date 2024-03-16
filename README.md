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
