export ZSH="$HOME/.oh-my-zsh"
export EDITOR=vim

ZSH_THEME="eastwood"

DISABLE_AUTO_TITLE="true"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-you-should-use
  copybuffer
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="${XDG_CONFIG_HOME:-$HOME/.nvm}"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export ANDROID_HOME="$HOME/opt/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools"
