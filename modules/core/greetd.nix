{pkgs, ...}: {
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        user = "greeter";
        command = "${pkgs.tuigreet}/bin/tuigreet --time --remember --cmd niri-session"; # start niri with a TUI login manager
        # command = "${pkgs.tuigreet}/bin/tuigreet --time --remember --cmd Hyprland"; # start Hyprland with a TUI login manager
      };
    };
  };
}
