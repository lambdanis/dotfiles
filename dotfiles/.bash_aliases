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
alias codegrep="grep --exclude-dir={.git,.idea,node_modules,.cache,__pycache__,.pytest_cache,.mypy_cache,*.egg-info} --exclude={*.pyc,*.o,*.gz,*.bz2,*.zip}"
alias pygrep="codegrep --include=*.py"

