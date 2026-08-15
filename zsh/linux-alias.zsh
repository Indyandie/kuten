ALIAS_PREFIX=":"

if [[ $OSTYPE == linux* ]]; then

    # date
    alias "${ALIAS_PREFIX}today"="date -I"

    # Hibernate
    alias "${ALIAS_PREFIX}sleep"="systemctl suspend"

    # Hyprland
    if [[ $XDG_CURRENT_DESKTOP = Hyprland ]]; then
        # stuff to do
        alias "${ALIAS_PREFIX}reload-dunst"="killall dunst && nohup dunst >& /dev/null &"
    fi

    # flatpak
    if [[ ${commands[flatpak]} ]]; then
        alias "${ALIAS_PREFIX}fp"="flatpak"
        alias "${ALIAS_PREFIX}fp:i"="flatpak install"
        alias "${ALIAS_PREFIX}fp:un"="flatpak uhinstall"
        alias "${ALIAS_PREFIX}fp:s"="flatpak search"
        alias "${ALIAS_PREFIX}fp:l"="flatpak list"
        alias "${ALIAS_PREFIX}fp:up"="flatpak upgrade"
    fi

    alias open="xdg-open"

    # thunar
    if [[ ${commands[thunar]} ]]; then
        alias "${ALIAS_PREFIX}tuna"="nohup thunar >> ~/.thunar-logs &"
    fi
fi
