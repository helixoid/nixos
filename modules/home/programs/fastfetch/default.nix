{
  imports = [
    ./config.nix
  ];

  programs.fastfetch.enable = true;

  # Copy the images directory to ~/.config/fastfetch/images
  home.file.".config/fastfetch/images" = {
    source = ./images;
    recursive = true;
  };
}
