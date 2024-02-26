if [ ! -d "$HOME/.config" ]; then
    mkdir "$HOME/.config"
fi
export XDG_CONFIG_HOME="$HOME/.config"

