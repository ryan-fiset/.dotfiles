if status is-interactive
    # Commands to run in interactive sessions can go here
end
# Set prompt
starship init fish | source

# Alias for nvim
alias v="nvim"

# Setting PATH for Python 3.11
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.11/bin" "$PATH"
