
# source /Users/amit/repos/amit-singh-7--bash--utils-main/aliases/system.sh

## History
# Defines the file where command history is stored.
HISTFILE=~/.zsh_history
# HISTSIZE sets the maximum number of commands stored in memory for the current session
HISTSIZE=10000
# SAVEHIST limits the number of commands saved in HISTFILE.
SAVEHIST=10000
# Ensures that commands from the current session are appended to HISTFILE at session end, preserving past history.
setopt append_history
# Adds timestamps to each history entry, providing details on when each command was run.
setopt extended_history
# Removes older duplicate commands from history, ensuring unique entries are preserved.
setopt hist_expire_dups_first
# Prevents recording a command if it's identical to the previous one, avoiding repetition in sequential commands.
setopt hist_ignore_dups
# Commands with a leading space are not saved in history, allowing you to run commands without recording them.
setopt hist_ignore_space
# Prompts for confirmation before executing a command recalled from history.
setopt hist_verify
# Writes commands to HISTFILE as they are entered, not just when the session ends, ensuring real-time history updates.
setopt inc_append_history
# Shares command history across multiple Zsh sessions, so entries from one session appear in others instantly.
setopt share_history

loc_aliases=$1

alias qwe='drep_f() { grep --color=auto --directories=recurse -i -B 1 -A 1 "$@" $loc_aliases; }; drep_f'
alias qw='drep_ff() { grep --color=auto --directories=recurse -i -B 1 -A 1 -h "$@" $loc_aliases; }; drep_ff'

# Colorize the ls output
alias ls='ls --color=auto'
alias ll='ls -lart --color=auto'
alias l='ls -la --color=auto'

# Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias drep='grep --color=auto --directories=recurse -i -B 1'
alias dgrep='grep --color=auto --directories=recurse'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'

alias ports='netstat -tulanp'
alias now='date +'%Y.%m.%d''

alias zrc='source ~/.zshrc'
alias brc='source ~/.bashrc'

alias py='python3'
alias pip='pip3'
alias cvpy='rm -rf ~/pyvenv && python3 -m venv ~/pyvenv && source ~/pyvenv/bin/activate && pip install --upgrade pip setuptools wheel'
alias spy='source ~/pyvenv/bin/activate'

# Find duplicate aliases
# dgrep "alias " aliases | grep -oP "\s+\w+='" | sort | uniq -d
alias dupli="dgrep \"alias \" $loc_aliases | grep -oP \"\s+\w+='\" | sort | uniq -d"

source $loc_aliases/docker.sh
source $loc_aliases/flux.sh
source $loc_aliases/gh.sh
source $loc_aliases/git.sh
source $loc_aliases/helm.sh
source $loc_aliases/k8s.sh
source $loc_aliases/azure.sh
