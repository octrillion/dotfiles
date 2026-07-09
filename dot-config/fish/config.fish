source /usr/share/cachyos-fish-config/cachyos-config.fish

set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_PICTURES_DIR "$HOME/Pictures"

if status is-interactive

    if not set -q SSH_AUTH_SOCK
        eval (ssh-agent -c) > /dev/null
        set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
        set -Ux SSH_AGENT_PID $SSH_AGENT_PID
    end
    # Commands to run in interactive sessions can go here
    set -x MANPAGER "nvim --clean +Man!"
    set -x EDITOR "/usr/bin/nvim"
    set -x VISUAL "/usr/bin/nvim"

    set -x PATH "$HOME/.local/bin:$HOME/.config/composer/vendor/bin:$HOME/.dotnet/tools:$PATH"
    abbr -a gl git log --oneline --decorate
    abbr -a gs git status

    abbr -a sail composer exec sail
end
