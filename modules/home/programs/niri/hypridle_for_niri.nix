{
  services.hypridle = {
    enable = true;

    settings = {
      general = {
        lock_cmd = "pidof hyprlock || hyprlock";
        before_sleep_cmd = "loginctl lock-session";
        # For niri:
        after_sleep_cmd = "niri msg action power-off-monitors --off";
      };

      listener = [
        {
          timeout = 150;
          on-timeout = "brightnessctl -s set 10";
          on-resume = "brightnessctl -r";
        }
        {
          timeout = 300;
          on-timeout = "loginctl lock-session";
        }
        {
          timeout = 380;
          # For niri:
          on-timeout = "niri msg action power-off-monitors";
          # For niri:
          on-resume = "niri msg action power-off-monitors --off";
        }
      ];
    };
  };
}
