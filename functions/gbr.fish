function gbr
    git checkout (git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)" | fzf)
end
