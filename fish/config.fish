#
# ███████╗██╗███████╗██╗  ██╗
# ██╔════╝██║██╔════╝██║  ██║
# █████╗  ██║███████╗███████║
# ██╔══╝  ██║╚════██║██╔══██║
# ██║     ██║███████║██║  ██║
# ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝
# A smart and user-friendly command line
# https://fishshell.com/

eval (/opt/homebrew/bin/brew shellenv)
starship init fish | source # https://starship.rs/
zoxide init fish | source # 'ajeetdsouza/zoxide'

set -U fish_greeting # disable fish greeting
set -U fish_key_bindings fish_vi_key_bindings
# set -U LANG en_US.UTF-8
# set -U LC_ALL en_US.UTF-8

set -Ux BAT_THEME Catppuccin-mocha # 'sharkdp/bat' cat clone
set -Ux EDITOR nvim # 'neovim/neovim' text editor
set -Ux FZF_DEFAULT_COMMAND "fd -H -E '.git'"
set -Ux PAGER "~/.local/bin/nvimpager" # 'lucc/nvimpager'
set -Ux VISUAL nvim

# golang - https://golang.google.cn/
set -Ux GOPATH (go env GOPATH)
fish_add_path $GOPATH/bin

# nodejs - https://nodejs.com
fish_add_path $HOME/.npm-global/bin:$PATH

if type -q exa
    alias ll "exa -l -g --icons"
    alias ls "exa --icons"
    alias lla "ll -a"
end

abbr tn "tmux new -s (pwd | sed 's/.*\///g')"

# ~/.tmux/plugins
fish_add_path $HOME/.tmux/plugins/t-smart-tmux-session-manager/bin
# ~/.config/tmux/plugins
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin
fish_add_path $HOME/.config/bin #for customs scripts
