{
  xdg = {
    mimeApps = {
      enable = true;
      defaultApplications = {
        # Web browser
        "text/html" = "zen-beta.desktop";
        "x-scheme-handler/http" = "zen-beta.desktop";
        "x-scheme-handler/https" = "zen-beta.desktop";
        "x-scheme-handler/about" = "zen-beta.desktop";
        "x-scheme-handler/unknown" = "zen-beta.desktop";

        # PDF viewer
        "application/pdf" = "org.gnome.Papers.desktop";

        # Images
        "image/png" = "swayimg.desktop";
        "image/jpeg" = "swayimg.desktop";
        "image/gif" = "swayimg.desktop";
        "image/webp" = "swayimg.desktop";
        "image/jxl" = "swayimg.desktop";
        "image/avif" = "swayimg.desktop";

        # Video
        "video/mp4" = "mpv.desktop";
        "video/x-matroska" = "mpv.desktop";

        # Audio
        "audio/mpeg" = "mpv.desktop";
        "audio/flac" = "mpv.desktop";
        "audio/aac" = "mpv.desktop";
        "audio/opus" = "mpv.desktop";
        "audio/ogg" = "mpv.desktop";

        # Text files
        "text/plain" = "dev.zed.Zed.desktop";

        # Archives
        "application/zip" = "org.gnome.FileRoller.desktop";
        "application/x-tar" = "org.gnome.FileRoller.desktop";
      };
    };
  };
}
