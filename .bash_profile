export LD_LIBRARY=/usr/local/lib
export LD_LIBRARY_PATH=/usr/local/lib
export PATH=/usr/local/bin:./bin:~/bin:/usr/local/sbin:$PATH

alias ls='ls -G'

alias wd='cd ~/code/cdd/ruby/'

source `brew --prefix git`/etc/bash_completion.d/git-completion.bash
source `brew --prefix git`/etc/bash_completion.d/git-prompt.sh

PS1='\h:\W$(__git_ps1 "(%s)") \u\$ '
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
