{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      spacing = 20;

      modules-left = [
        "cpu"
        "memory"
        "temperature"
        "battery"
        # "hyprland/window"
        "niri/window"
      ];

      modules-center = [
        # "hyprland/workspaces"
        "niri/workspaces"
      ];

      modules-right = [
        "tray"
        "idle_inhibitor"
        "network"
        "bluetooth"
        "pulseaudio"
        "pulseaudio#microphone"
        "backlight"
        "clock"
      ];
    };
  };
}
