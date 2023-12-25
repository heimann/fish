if status is-interactive
    # Commands to run in interactive sessions can go here
  atuin init fish | source
end

set -gx PATH "$HOME/.cargo/bin" $PATH
set -U fish_user_paths $HOME/.local/bin $fish_user_paths
set -gx TERM xterm-256color

# Nightfox Color Palette
# Style: duskfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/duskfox/nightfox_fish.fish
set -l foreground e0def4
set -l selection 35334f
set -l comment 817c9c
set -l red eb6f92
set -l orange ea9a97
set -l yellow f6c177
set -l green a3be8c
set -l purple c4a7e7
set -l cyan 9ccfd8
set -l pink EB98C3

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment

# Global Variables
set -x EDITOR nvim
set -x VISUAL nvim
set -x PAGER bat
set -x ERL_AFLAGS "-kernel shell_history enabled"


# Abbreviations
abbr gco 'git checkout'
alias t='todo.sh'

source ~/.config/fish/private_variables.fish



switch (uname)
    case Darwin
        source (dirname (status --current-filename))/config-osx.fish
    case Linux
        source (dirname (status --current-filename))/config-linux.fish
    case '*'
        source (dirname (status --current-filename))/config-windows.fish
end

starship init fish | source

set -U fish_histfile ~/.local/share/fish/fish_history

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/david/miniconda3/bin/conda
    eval /home/david/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<


