if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end


# Go
set -x GOPATH ~/go
# set goroot
set -x GOROOT /usr/local/opt/go/libexec

# PATH
set PATH '/usr/local/sbin' $PATH
set PATH '/usr/local/bin' $PATH
set PATH "$HOME/.cargo/bin" $PATH
set PATH "$HOME/bin" $PATH
set -x PATH $PATH $GOROOT/bin $GOPATH/bin  # add the go bin path to be able to execute our programs

set -xg EDITOR 'nvim'
set -xg MANPAGER 'less -X' # Don’t clear the screen after quitting a manual page
set -xg XDG_CONFIG_HOME "$HOME/.config"
set -xg XDG_DATA_HOME "$HOME/.local/share"
set -xg XDG_CACHE_HOME "$HOME/.cache"
set -xg FZF_DEFAULT_COMMAND 'rg --files --hidden'

fish_vi_key_bindings

# Prefer Homebrew programs to the default built in ones
set -g fish_user_paths "/usr/local/opt/curl/bin" $fish_user_paths
