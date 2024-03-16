# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Add wisely, as too many plugins slow down shell startup.
plugins=(cmdtime brew docker-compose docker dotnet asdf git zsh-autosuggestions zsh-syntax-highlighting autojump)

source $ZSH/oh-my-zsh.sh

#Global Protect
alias stopgp='launchctl unload /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*'
alias startgp='launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*'
alias restartgp='f() { stopgp; startgp; };f'

#git commit format
alias gc='f() { paramcount=$#;message=$1;author=$2;branch=$3;if [ "$paramcount" -lt "3" ];then branch=$(git rev-parse --abbrev-ref HEAD);fi;if [ "$paramcount" -lt "2" ];then author="Prakash";fi;if [ "$paramcount" -lt "1" ];then message="This is a test commit";fi;git commit -m "<$branch> | $message | <$author>";};f'
alias gcn='f() { paramcount=$#;message=$1;author=$2;branch=$3;if [ "$paramcount" -lt "3" ];then branch=$(git rev-parse --abbrev-ref HEAD);fi;if [ "$paramcount" -lt "2" ];then author="Prakash";fi;if [ "$paramcount" -lt "1" ];then message="This is a test commit";fi;git commit -m "<$branch> | $message | <$author>" -n;};f'

#git aliases
alias gs='git status'
alias glo='f() { if [ $# -eq 0 ]; then git log --no-merges; else git --no-pager log -$1 --no-merges; fi };f'
alias gd='git diff'
alias gh='git hist'
alias ga='git add .'
alias gcObsolete='f() {git commit -m "<$1> | $2 | <$3>"};f'
alias gpu='f() { branch=$(git rev-parse --abbrev-ref HEAD); git push --set-upstream origin $branch};f'
alias gpf='f() { branch=$(git rev-parse --abbrev-ref HEAD); git push -f --set-upstream origin $branch};f'
alias bu='git commit -m "Berks update"'

#gitlab aliases
alias glabmr='f() { paramcount=$#;message=$1;branch=$2;if [ "$paramcount" -lt "2" ];then branch="master";fi;if [ "$paramcount" -lt "1" ];then message="This is a test MR";fi;glab mr create -b $branch -t $message -y;};f'
alias glabmerge='f() { glab mr merge $1 }; f'

#docker aliases
alias dp='docker ps'
alias dpa='docker ps -a'
alias ds='docker ps -f "status=exited"'
alias drp='docker restart proxy'
alias dl='f() { docker logs -f $1; };f'

#jump directory aliases
alias jp='j pr-main'
alias jc='j client'
alias jf='j frontend'
alias je='j etl-engine'

#other custom aliases
alias cls='clear'
alias please='sudo'
alias bat='cat'
alias woman='tldr'
alias howto='how2'
alias mirror='scrcpy -b2M -m800 --max-fps 15 --turn-screen-off --always-on-top &'
alias calsync='f() { launchctl stop com.apple.CalendarAgent; launchctl start com.apple.CalendarAgent };f'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
