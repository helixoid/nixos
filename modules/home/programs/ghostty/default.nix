{
  imports = [./config.nix];
  programs.ghostty = {
    enable = true;
    enableFishIntegration = true;
  };
}
