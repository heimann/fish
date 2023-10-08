function gm
    set branches (git branch -r | sed "s/  origin\///" | tail -n+2)
    if contains main $branches
        git checkout main && git pull
    end

    if contains master $branches
        git checkout master && git pull
    end
end
