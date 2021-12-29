source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

alias upd="softwareupdate -ldia && brew upgrade && rustup update && brew cleanup"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk/include"
export PATH="/usr/local/opt/curl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/curl/lib"
export CPPFLAGS="-I/usr/local/opt/curl/include"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"
export LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export DOTNET_ROOT="/usr/local/opt/dotnet/libexec"
export GPG_TTY=$(tty)
export PATH="/usr/local/opt/libressl/bin:$PATH"
export PATH="/usr/local/opt/openssl@3/bin:$PATH"
export PATH="/usr/local/opt/openssl@1/bin:$PATH"
export PATH="/usr/local/opt/libssh/bin:$PATH"
export PATH="/usr/local/opt/openssh/bin:$PATH"
export PATH="/usr/local/opt/libssh2/bin:$PATH"
export PATH="/usr/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/libressl/lib"
export LDFLAGS="-L/usr/local/opt/openssl@3/lib"
export LDFLAGS="-L/usr/local/opt/openssl@1/lib"
export LDFLAGS="-L/usr/local/opt/libssh/lib"
export LDFLAGS="-L/usr/local/opt/openssh/lib"
export LDFLAGS="-L/usr/local/opt/libssh2/lib"

export CPPFLAGS="-I/usr/local/opt/libressl/include"
export CPPFLAGS="-I/usr/local/opt/openssl@3/include"
export CPPFLAGS="-I/usr/local/opt/openssl@1/include"
export CPPFLAGS="-I/usr/local/opt/libssh/include"
export CPPFLAGS="-I/usr/local/opt/openssh/include"
export CPPFLAGS="-I/usr/local/opt/libssh2/include"
source="~/go/bin"


if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
