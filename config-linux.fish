source ~/.asdf/asdf.fish
fish_add_path ~/.local/bin
set -x BROWSER /usr/bin/firefox

# initialize cuda 
set -gx PATH $PATH /usr/local/cuda-11.8/bin
set -gx LD_LIBRARY_PATH $LD_LIBRARY_PATH /usr/local/cuda-11.8/lib64 /usr/local/cuda-11.8/extras/CUPTI/lib64
