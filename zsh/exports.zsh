export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export EDITOR="nvim"
export VISUAL="nvim"

export HISTFILE=~/.cache/.zsh_history
export HISTSIZE=5000
export SAVEHIST=5000

export NVIMCONF=~/.config/nvim
export NVIMRC=~/.config/nvim/init.lua
export zshrc=~/.config/zsh/.zshrc

export PATH="/data/data/com.termux/files/home/.local/bin":$PATH
export PATH="/data/data/com.termux/files/home/.cargo/bin":$PATH

export USER=afnan
export HOSTNAME=android
export THEME="TokyoNight Storm"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(zoxide init zsh)" 
export XDG_RUNTIME_DIR="/data/data/com.termux/files/usr/tmp/"
