# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

#Global Protect
alias stopgp='launchctl unload /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*'
alias startgp='launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*'
alias restartgp='f() { stopgp; startgp; };f'

# start a tmux session, or link existing one
export INSTANCE=i-01234abcd780
alias sshtmux='ssh ubuntu@$INSTANCE -t '\''tmux has-session -t ${USER}_session 2>/dev/null || tmux new-session -d -s ${USER}_session; tmux attach-session -t ${USER}_session'\'

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

#gitlab aliases
alias glabmr='f() { paramcount=$#;message=$1;branch=$2;if [ "$paramcount" -lt "2" ];then branch="master";fi;if [ "$paramcount" -lt "1" ];then message="This is a test MR";fi;glab mr create -b $branch -t $message -y;};f'
alias glabmerge='f() { glab mr merge $1 }; f'

#docker aliases
alias dp='docker ps'
alias dpa='docker ps -a'
alias ds='docker ps -f "status=exited"'
alias drp='docker restart proxy'
alias dl='f() { docker logs -f $1; };f'

#other custom aliases
alias cls='clear'
alias please='sudo'
alias bat='cat'
alias woman='tldr'
alias howto='how2'
alias mirror='scrcpy -b2M -m800 --max-fps 15 --turn-screen-off --always-on-top &'
alias calsync='f() { launchctl stop com.apple.CalendarAgent; launchctl start com.apple.CalendarAgent };f'

# Automatically ls when changing directory
cd() {
  builtin cd "$@" && ll
}

# Misc
alias jctl="journalctl -p 3 -xb"
alias mkdir='mkdir -p -v'
alias cp='cp -av -i'
alias mv='mv -v -i'
alias rm='rm -v -d'
alias df='df -h'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# iterm extras, like catimg
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
