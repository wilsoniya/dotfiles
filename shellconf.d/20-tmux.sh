function yp() {
    local fname;
    local fpath;
    fname=${1:-$(pwd)}
    fpath=$(realpath $fname)
    echo $fpath | tby
}
