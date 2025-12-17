{pkgs, ...}: {
  imports = [
    ./config.nix
    ./languages.nix
  ];

  programs.helix = {
    enable = true;
  };
  home.packages = with pkgs; [
    alejandra
    nixd
    charm-freeze
    typst
    tinymist
  ];
}
