{
  programs.fish = {
    # Disable the default greeting
    interactiveShellInit = ''
      set fish_greeting ""
    '';

    shellAliases = {
      typ = "ttyper";
      nhc = "nh clean all --optimise --ask";
      nhs = "nh os switch --ask";
      nhb = "nh os boot --ask";
      h = "hx";
      mpc = "rmpc";
      prop = "hyprctl clients | grep -i 'class\\|title\\|xwayland'";
      ls = "eza --icons=always";
      ff = "fastfetch";
      la = "eza --icons=always -a";
      lla = "eza --icons=always -la";
      lt = "eza --icons=always -la --tree";
      ytm = "yt-dlp -x --embed-metadata";
    };

    functions = {
      # Yazi integration function
      y = ''
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
      '';
    };
  };

  # Set PATH - add ~/.local/bin
  home.sessionPath = [
    "$HOME/.local/bin"
  ];
}
