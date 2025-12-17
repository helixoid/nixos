{pkgs, ...}: {
  home.packages = with pkgs; [
    newsraft
  ];
  home.file = {
    ".config/newsraft/config" = {
      source = ./config;
    };
    ".config/newsraft/feeds" = {
      source = ./feeds;
    };
  };
}
