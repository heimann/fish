function sq
    set -l host (cat ~/.ssh/config | grep 'Host ' | awk '{print $2}' | fzf --height=20%)
    if test -n "$host"
        ssh $host
    end
end
