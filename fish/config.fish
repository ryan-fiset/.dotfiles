if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Alias for nvim
alias v="vim"

# Aliases for pip and python to remove 3 at the end
alias python="python3"
alias pip="pip3"

# Setting PATH for Python 3.11
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.11/bin" "$PATH"

# Set prompt
starship init fish | source
