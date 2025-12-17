{pkgs, ...}: {
  programs.mpv = {
    enable = true;
    scripts = with pkgs; [
      mpvScripts.uosc
      mpvScripts.thumbfast
    ];
  };

  imports = [
    ./config.nix
  ];
}
