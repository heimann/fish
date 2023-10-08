function vf
    nvim (fd | fzf --ansi  --bind page-up:preview-page-up,page-down:preview-page-down --preview-window "top:60%" --preview "bat --color=always --style=header,grid --line-range :300 {}")
end
