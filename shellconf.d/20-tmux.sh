alias tmux="tmux -2"
alias tby="xargs tmux set-buffer"
alias tbp="tmux paste-buffer"

function yp() {
    local fname;
    local fpath;
    fname=${1:-$(pwd)}
    fpath=$(realpath $fname)
    echo $fpath | tby
}
