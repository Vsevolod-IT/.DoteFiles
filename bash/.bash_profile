# my settings
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]🔥 >\[\033[00m\] '

# my aliases
alias lsp='ls -lh --color=always | sed 1d | awk "{printf \"%s %s %s %5s %-30s\n\", \$1, \$3, \$4, \$5, \$9}"'
alias lsa='ls -lah --color=always | grep -v "^total"'
alias lsl='ls -lh --color=always | grep -v "^total"'

# color fix for other terminals
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
     test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
     alias ls='ls --color=auto'
     alias dir='dir --color=auto'
     alias grep='grep --color=auto'
     alias fgrep='fgrep --color=auto'
     alias egrep='egrep --color=auto'
fi

# yellow color for directories
LS_DIR_COLOR="di=1;33:"
LS_COLORS=$LS_COLORS$LS_DIR_COLOR

# set terminal title
PROMPT_COMMAND='echo -ne "\033]0;$(pwd)\007"'
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
