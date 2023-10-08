function pq
    pgcli service=(cat ~/.pg_service.conf | rg '[\\[][\\w+-]+[\\]]' | sed 's/[^a-zA-Z+-]//g' | fzf --height=20%)
end
