{ ... }:

{
  xdg.configFile."ghostty/config".text = ''
    # Config by David :)
    window-height = 30
    window-width = 165

    # Tema automático
    theme = light:Alabaster,dark:Night Owl

    # Actualizaciones
    auto-update = download
    auto-update-channel = stable

    # Icono para macOS
    macos-icon = retro
    macos-icon-frame = chrome
  '';
}
