{ inputs, pkgs, ... }:

{
  # Enable Hyprland
  programs.hyprland = {
      enabled = true;
      package = 
  }



 # environment.sessionVariables.NIXOS_OZONE_WL = "1";
# # environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

  environment.systemPackages = with pkgs; [
    hyprpicker
    hyprcursor
    hyprlock
    hypridle
    hyprpaper
    starship
    zathura
    mpv
    alacritty
    imv
  ];
}