function vr
    set -l selected_file (git log --pretty='' --name-only | awk '!visited[$0]++' | fzf --tiebreak=index --ansi --bind page-up:preview-page-up,page-down:preview-page-down --preview-window "top:60%" --preview "bat --color=always --style=header,grid --line-range :300 {}")
    if test -n "$selected_file"
        nvim $selected_file
    end
end
