{pkgs, ...}: {
  home.pointerCursor = {
    package = pkgs.gnome-themes-extra;
    # name = "Bibata-Modern-Ice";
    name = "Adwaita";
    size = 24;
    gtk.enable = true;
    hyprcursor.enable = true;
  };
}
