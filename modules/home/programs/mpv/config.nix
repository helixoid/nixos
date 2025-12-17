{
  programs.mpv = {
    config = {
      hwdec = "auto";
      vo = "gpu-next";
      profile = "gpu-hq";
      fs = "yes";
      sub-auto = "fuzzy";
      slang = "eng,en,English,en-US,en-GB";
      save-position-on-quit = "yes";
    };
  };
}
