function gsr
    set branch (git rev-parse --abbrev-ref HEAD)
    git branch --set-upstream-to=origin/$branch $branch
end
