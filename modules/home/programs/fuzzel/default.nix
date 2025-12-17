{
  programs.fuzzel = {
    enable = true;
  };
  services.cliphist = {
    enable = true;
  };
  imports = [
    ./config.nix
  ];
}
