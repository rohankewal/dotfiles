if status is-interactive
    set fish_greeting ""

    #Theme
    set -g theme_color_scheme terminal-dark
    set -g theme_display_user yes
    set -g theme_hide_hostname no
    set -q __fish_prompt_hostname

    #Alias
    alias g "git"
    alias ll "exa -l -g --icons"
    alias vim "nvim"

    #NodeJS
    set -gx PATH node_modules/.bin $PATH
end
