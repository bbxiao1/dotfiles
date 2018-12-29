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
# export PATH="$HOME/.rbenv/bin:`yarn global bin`:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$HOME/go/bin
eval "$(rbenv init -)"
eval "$(direnv hook bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

# https://statico.github.io/vim3.html
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='
  --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
  '

# opam configuration
test -r /Users/xiaoba/.opam/opam-init/init.sh && . /Users/xiaoba/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
eval `opam config env`
