function vgc
    set -l modified_files (git status --short | awk '{print $2}')

    if test -n "$modified_files"
        set -l selected_file (printf "%s\n" $modified_files | fzf --tiebreak=index --ansi --bind page-up:preview-page-up,page-down:preview-page-down --preview-window "top:60%" --preview "git diff --color=always -- {}")
        if test -n "$selected_file"
            set -l line_number (git diff --unified=0 -- $selected_file | grep -Po '(?<=^@@ -)[0-9]+')
            nvim +$line_number $selected_file
        end
    else
        echo "No current changes in the working tree :) Git to work!"
    end
end
