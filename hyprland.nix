{ inputs, pkgs, ... }:

{
  # Enable Hyprland
  programs.hyprland = {
      enabled = true;
      package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland; 
  }
}
