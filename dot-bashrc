# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi


# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.dotnet/tools:$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc



export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_PICTURES_DIR="$HOME/Pictures"
export HYPRSHOT_DIR="$XDG_PICTURES_DIR/screenshots"
export DISPLAY=":1"
export MANPAGER="nvim --clean +Man!"

alias la='ls -A'
alias ll='ls -l'

alias gl='git log --oneline --decorate'
alias gs='git status'

clpf() {
    wl-copy < "$1";
}

. "$HOME/.cargo/env"
. "/usr/share/git/completion/git-completion.bash"

fastfetch
