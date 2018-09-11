# date & time
function timestamp {
    if [ -z "$1" ]; then
        date +%s
    else
        date +%s -ud "$1"
    fi
}

# python development
alias rmpyc="find . -name '*.pyc' -delete"
alias codegrep="grep --exclude-dir={node_modules,.idea,.pytest_cache,.mypy_cache}"
alias pygrep="codegrep --include=*.py"

