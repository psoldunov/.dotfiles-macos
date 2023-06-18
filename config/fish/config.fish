if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

export DOTFILES="$HOME/.dotfiles"
export USER_CONFIG="$DOTFILES/config/fish/user_files"

# Starship
source $USER_CONFIG/starship.fish

# Variables
source $USER_CONFIG/variables.fish

# Aliases
source $USER_CONFIG/aliases.fish

# Functions
source $USER_CONFIG/functions.fish

# Yabai Helper Functions
source $USER_CONFIG/yabai.fish

# add ~/.local/bin to PATH
export PATH="$HOME/.local/bin:$PATH"

if test -d (brew --prefix)"/share/fish/completions"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

#MacPorts
set -gx PATH /opt/local/bin /opt/local/sbin $PATH

