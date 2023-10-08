function gpr
    set branch (gh pr list | fzf | awk '{print $1}')
    echo $branch

    if test -n "$branch"
        gh pr checkout $branch
        gh issue view $branch | mdcat
    end
end
