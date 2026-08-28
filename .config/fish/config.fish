export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
source ~/.config/fish/secrets.fish
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_PICTURES_DIR "$HOME/Pictures"

if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x MANPAGER "nvim --clean +Man!"
    set -x HYPRSHOT_DIR "$XDG_PICTURES_DIR/screenshots"
    set -x EDITOR "/usr/bin/nvim"
    set -x VISUAL "/usr/bin/nvim"

    set -x PATH "$HOME/.local/bin:$HOME/.config/composer/vendor/bin:$HOME/.dotnet/tools:$PATH"
    abbr -a gl git log --oneline --decorate
    abbr -a gs git status

    abbr -a sail composer exec sail
    fastfetch
end
direnv hook fish | source
