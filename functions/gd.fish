function gd
git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r
end
