{pkgs, ...}: {
  home.packages = with pkgs; [
    grim
    slurp
    satty
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
  imports = [
    ./hyprland.nix
    ./hyprlock.nix
  ];
}
