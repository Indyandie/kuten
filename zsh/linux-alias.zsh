if [[ $OSTYPE == linux* ]]; then

    # date
    alias @today="date -I"

    # Hibernate
    alias @sleep="systemctl suspend"

    # Hyprland
    if [[ $XDG_CURRENT_DESKTOP = Hyprland ]]; then
        # stuff to do
        alias @reload-dunst="killall dunst && nohup dunst >& /dev/null &"
    fi

    # flatpak
    if [[ ${commands[flatpak]} ]]; then
        alias @fp="flatpak"
        alias @fp:i="flatpak install"
        alias @fp:un="flatpak uhinstall"
        alias @fp:s="flatpak search"
        alias @fp:l="flatpak list"
        alias @fp:up="flatpak upgrade"
    fi

    alias open="xdg-open"

    # thunar
    if [[ ${commands[thunar]} ]]; then
        alias @tuna="nohup thunar >> ~/.thunar-logs &"
    fi
fi
