export LD_LIBRARY=/usr/local/lib
export LD_LIBRARY_PATH=/usr/local/lib
export PATH=/usr/local/bin:./bin:~/bin:/usr/local/sbin:$PATH

alias ls='ls -G'
alias g='git'
alias rubyserve='ruby -run -e httpd . -p 9090'
alias be='bundle exec'


source `brew --prefix git`/etc/bash_completion.d/git-completion.bash
source `brew --prefix git`/etc/bash_completion.d/git-prompt.sh

export PS1='\[\e[0;36m\]\t \w ->\n\[\e[1;32m\]$(__git_ps1 "(%s)") \$ \e[0m'
export PATH="$HOME/.rbenv/bin:`yarn global bin`:$PATH"
eval "$(rbenv init -)"
eval "$(direnv hook bash)"
