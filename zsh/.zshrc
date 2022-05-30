source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source="~/go/bin"
source="/Users/trevoropiyo/.cargo/bin"

alias upd="softwareupdate -ldia & brew upgrade & rustup update & brew cleanup; sudo cargo install-update -a "
alias n="nvim"
alias pass="rust-passmaker"
alias ref="source .zshrc"
alias ls="lsd"
alias du="dust"
alias cp="xcp"
alias jump="ssh trevor@18.217.30.93"
alias python="python3"
alias dev="ssh ubuntu@18.188.238.62"
alias man="batman"
alias pb="batpipe"
alias rg="batgrep"
alias tock="tock -c -s -C 7"
alias environ="source prism-venv/bin/activate"
alias rock="rocketfetch"
alias draw="pipes-rs"
alias mat="r-matrix"
alias nq="networkquality"
export PATH="/sbin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/Users/trevoropiyo/.cargo/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib -Wl,-rpath,/opt/homebrew/opt/llvm/lib"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export DOTNET_ROOT="/opt/homebrew/opt/dotnet/libexec"
export PATH="/opt/homebrew/opt/libressl/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@1/bin:$PATH"
export PATH="/opt/homebrew/opt/libssh/bin:$PATH"
export PATH="/opt/homebrew/opt/openssh/bin:$PATH"
export PATH="/opt/homebrew/opt/libssh2/bin:$PATH"
export PATH="/usr/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/libressl/lib"
export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
export LDFLAGS="-L/opt/homebrew/opt/openssl@1/lib"
export LDFLAGS="-L/opt/homebrew/opt/libssh/lib"
export LDFLAGS="-L/opt/homebrew/opt/openssh/lib"
export LDFLAGS="-L/opt/homebrew/opt/libssh2/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libressl/include"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@1/include"
export CPPFLAGS="-I/opt/homebrew/opt/libssh/include"
export CPPFLAGS="-I/opt/homebrew/opt/openssh/include"
export CPPFLAGS="-I/opt/homebrew/opt/libssh2/include"
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
export GPG_TTY=$(tty)

eval "$(starship init zsh)"
eval "$(batpipe)"
eval "$(zoxide init zsh)"
autoload -Uz compinit
compinit
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=*     r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi
test -e /Users/trevoropiyo/.iterm2_shell_integration.zsh && source /Users/trevoropiyo/.iterm2_shell_integration.zsh || true
