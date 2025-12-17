{pkgs, ...}: {
  programs.jujutsu = {
    enable = true;
  };
  home.packages = with pkgs; [
    lazyjj
  ];
  imports = [
    ./config.nix
  ];
}
