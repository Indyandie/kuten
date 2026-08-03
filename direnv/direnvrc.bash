# https://github.com/direnv/direnv/wiki/Customizing-cache-location
# Create hash from pwd and .envrc

: "${XDG_CACHE_HOME:="${HOME}/.cache"}"
declare -A direnv_layout_dirs

direnv_layout_dir() {
    local hash path
    echo "${direnv_layout_dirs[$PWD]:=$(
        hash="$( (
            echo -n "$PWD"
            cat .envrc 2>/dev/null || true
        ) | sha1sum | head -c40)"
        path="${PWD//[^a-zA-Z0-9]/-}"
        echo "${XDG_CACHE_HOME}/direnv/layouts/${hash}${path}"
    )}"
}
