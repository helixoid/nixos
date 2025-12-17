{pkgs, ...}: {
  imports = [
    ./niri.nix
    ../hypr/hyprlock.nix
    ./hypridle_for_niri.nix
  ];
  home.packages = with pkgs; [
    sunsetr
    brightnessctl
    gpu-screen-recorder-gtk
    libnotify
    mako
    polkit_gnome
    swww
    waypaper
    wl-clipboard
    xwayland-satellite
  ];
}
