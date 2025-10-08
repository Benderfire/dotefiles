# --- Détection environnement ---
if [[ -d "/data/data/com.termux/files/home" ]]; then
  export ENVIRONMENT="termux"
else
  export ENVIRONMENT="debian"
fi

# --- Oh-My-Zsh setup ---
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins communs
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Charger Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

# --- Powerlevel10k prompt ---
[[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]] && \
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# --- Config commune ---
alias ll='ls -lah --color=auto'
export EDITOR=nvim

# --- Config Termux ---
if [[ "$ENVIRONMENT" == "termux" ]]; then
  export PATH=$PATH:/data/data/com.termux/files/usr/bin
  alias cls='clear'
  alias update='pkg update && pkg upgrade -y'
  alias debian="proot-distro login --bind /data/data/com.termux/files/home:/home/debian debian"
fi

# --- Config Debian ---
if [[ "$ENVIRONMENT" == "debian" ]]; then
  alias update='apt update && apt upgrade -y'
  alias python='python3'
fi

# --- Plugins spécifiques ---
# Zsh Copilot (Termux et Debian)
# --- Zsh Copilot (facultatif) ---
export ZSH_COPILOT_LOGFILE="$HOME/.cache/zsh-copilot.log"

# Charger le plugin uniquement si une clé AI est configurée
if [[ -n "$OPENAI_API_KEY" || -n "$ANTHROPIC_API_KEY" ]]; then
  if [[ -f ~/.oh-my-zsh/custom/plugins/zsh-copilot/zsh-copilot.plugin.zsh ]]; then
    source ~/.oh-my-zsh/custom/plugins/zsh-copilot/zsh-copilot.plugin.zsh
  fi
fi
# Alias personnel
alias s='python3 ~/.cli_ai_assistant/launcher.py'

# Python keyring
export PYTHON_KEYRING_BACKEND=keyrings.alt.file.PlaintextKeyring
alias ls=lsd
alias downloads="cd downloads/"
# export ANTHROPIC_cle="my_key"


