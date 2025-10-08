alias s='python3 ~/.cli_ai_assistant/launcher.py'
. "$HOME/.cargo/env"

# ===========================================
# 🚀 MOBILE TERMUX BASH BEAUTIFICATION 🚀
# ===========================================

# Color definitions for better visual experience
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Enhanced PS1 prompt with colors and mobile-friendly info
export PS1='\[\033[01;32m\]📱 \[\033[01;34m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '

# Mobile Termux optimizations
alias ll='ls -la --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias ls='ls --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Mobile shortcuts with emojis
alias projects='cd ~/projects && echo "📁 Projects directory"'
alias downloads='cd ~/downloads && echo "📥 Downloads directory"'
alias scripts='cd ~/scripts && echo "📜 Scripts directory"'
alias nv='nvim'
alias py='python'
alias pip='pip3'

# Git shortcuts with visual feedback
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'

# Mobile-friendly file operations
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias mkdir='mkdir -pv'
alias rmdir='rmdir -v'

# Quick navigation
alias home='cd ~ && echo "🏠 Home directory"'
alias config='cd ~/.config && echo "⚙️  Config directory"'

# System information shortcuts
alias df='df -h'
alias du='du -h'
alias free='free -h'
alias ps='ps aux'
alias top='htop'

# Mobile development helpers
alias serve='python -m http.server 8000'
alias ports='netstat -tuln'
alias myip='curl -s ifconfig.me && echo'

# Fun and useful commands
alias weather='curl -s wttr.in'
alias matrix='cmatrix'
alias cowsay='cowsay -f dragon'
alias fortune='fortune | cowsay'

# Welcome message
echo "🎉 Welcome to your beautified Termux Bash! 🎉"
echo "💡 Type 'help' for available commands"
echo ""

# Help function
help() {
    echo "=========================================="
    echo "📱 MOBILE TERMUX BASH COMMANDS 📱"
    echo "=========================================="
    echo "Navigation:"
    echo "  .., ..., ....  - Quick directory up"
    echo "  home, config   - Quick directory access"
    echo "  projects       - Go to projects folder"
    echo "  downloads      - Go to downloads folder"
    echo "  scripts        - Go to scripts folder"
    echo ""
    echo "Development:"
    echo "  nv             - Open Neovim"
    echo "  py             - Run Python"
    echo "  serve          - Start HTTP server on port 8000"
    echo "  ports          - Show open ports"
    echo "  myip           - Show your IP address"
    echo ""
    echo "Git shortcuts:"
    echo "  gs, ga, gc, gp - Git status, add, commit, push"
    echo "  gl, gd, gb     - Git log, diff, branch"
    echo ""
    echo "System:"
    echo "  ll, la, l      - List files with colors"
    echo "  df, du, free   - Disk and memory usage"
    echo "  htop           - System monitor"
    echo ""
    echo "Fun:"
    echo "  weather        - Check weather"
    echo "  matrix         - Matrix effect"
    echo "  cowsay         - Cow says something"
    echo "  fortune        - Random fortune"
    echo "=========================================="
}

