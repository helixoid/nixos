{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    settings = {
      # ==================== VARIABLES ====================
      "$mod" = "SUPER";
      "$term" = "ghostty";
      "$browser" = "zen-beta";
      "$scripts" = "~/.config/hypr";

      # ==================== ENVIRONMENT ====================
      # env = [
      #   "HYPRCURSOR_THEME,HyprBibataModernClassicSVG"
      #   "HYPRCURSOR_SIZE,20"
      #   "XCURSOR_THEME,Bibata-Modern-Classic"
      #   "XCURSOR_SIZE,20"
      # ];

      # ==================== AUTOSTART ====================
      exec-once = [
        # "waybar"
        "waypaper --restore"
        "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
        "hyprsunset"
        "hypridle"
        "cliphist wipe"
      ];

      # ==================== MONITOR ====================
      monitor = ",preferred,auto,1";

      # ==================== INPUT ====================
      input = {
        numlock_by_default = true;
        accel_profile = "adaptive";
        sensitivity = 0.0;
        touchpad = {
          natural_scroll = true;
        };
      };

      # ==================== GESTURES (Updated for 0.51+) ====================
      gestures = {
        # New gesture system (replaces workspace_swipe)
        gesture = [
          "3, horizontal, workspace"
        ];
      };

      # ==================== GENERAL ====================
      general = {
        gaps_in = 3;
        gaps_out = 5;
        border_size = 2;
        allow_tearing = true;
        # Remove these when using stylix
        "col.active_border" = "rgba(458588ff) rgba(98971aff) 45deg";
        "col.inactive_border" = "rgba(928374ff)";
      };

      # ==================== DECORATION ====================
      decoration = {
        rounding = 10;
        blur = {
          enabled = true;
          size = 9;
          passes = 3;
        };
      };

      # ==================== ANIMATIONS ====================
      animations = {
        enabled = true;

        # Smooth, fluid bezier curves - no bounce
        bezier = [
          "easeOutQuint, 0.22, 1, 0.36, 1"
          "easeInOutCubic, 0.65, 0, 0.35, 1"
          "linear, 0, 0, 1, 1"
          "easeOutExpo, 0.16, 1, 0.3, 1"
        ];

        animation = [
          # Slow, smooth window animations
          "windows, 1, 8, easeOutExpo, slide"
          "windowsIn, 1, 8, easeOutExpo, slide"
          "windowsOut, 1, 8, easeInOutCubic, slide"
          "windowsMove, 1, 8, easeOutQuint, slide"

          # Subtle border animations
          "border, 1, 10, easeOutQuint"
          "borderangle, 1, 100, linear, loop"

          # Smooth fading
          "fade, 1, 8, easeOutQuint"
          "fadeIn, 1, 8, easeOutExpo"
          "fadeOut, 1, 8, easeInOutCubic"

          # Gentle workspace transitions
          "workspaces, 1, 9, easeOutExpo, slide"
        ];
      };

      # ==================== DWINDLE ====================
      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      # ==================== MISC ====================
      misc = {
        mouse_move_enables_dpms = true;
        enable_swallow = true;
        swallow_regex = "^($term)$";
        focus_on_activate = true;
        disable_hyprland_logo = true;
        force_default_wallpaper = 0;
      };

      # ==================== KEYBINDS ====================
      bind = [
        # Application shortcuts
        "$mod, Return, exec, $term"
        "ALT, I, exec, $browser"
        "ALT, C, exec, $term -e cava"
        "ALT, M, exec, $term -e rmpc"
        "ALT, N, exec, $term -e newsraft"
        "ALT, E, exec, thunar"
        "ALT, T, exec, transmission-remote-gtk"

        # Window manager essentials
        "$mod, L, exec, hyprlock --immediate"
        # "$mod, E, exec, ~/.config/fuzzel/"
        "$mod, Backspace, exec, ~/.config/fuzzel/powermenu.sh"
        "$mod, SPACE, exec, fuzzel"
        "$mod, C, exec, ~/.config/fuzzel/clipboard.sh"
        "$mod, Print, exec, $scripts/screenshot.sh s"
        ", Print, exec, $scripts/screenshot.sh p"

        # Media controls
        ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle && $scripts/volume.sh"
        ", XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle && $scripts/volume.sh"
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPause, exec, playerctl play-pause"
        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioPrev, exec, playerctl previous"

        # Window management
        "$mod, T, togglefloating"
        "$mod, P, pseudo"
        "$mod, J, togglesplit"
        "$mod, Q, killactive"
        "$mod, F, fullscreen"

        # Focus movement
        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"

        # Window movement
        "$mod SHIFT, left, movewindow, l"
        "$mod SHIFT, right, movewindow, r"
        "$mod SHIFT, up, movewindow, u"
        "$mod SHIFT, down, movewindow, d"

        # Workspace switching
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"

        # Move to workspace
        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"
        "$mod SHIFT, 6, movetoworkspace, 6"
        "$mod SHIFT, 7, movetoworkspace, 7"
        "$mod SHIFT, 8, movetoworkspace, 8"
        "$mod SHIFT, 9, movetoworkspace, 9"
        "$mod SHIFT, 0, movetoworkspace, 10"

        # Mouse workspace switching
        "$mod, mouse_down, workspace, e+1"
        "$mod, mouse_up, workspace, e-1"

        # Resize submap
        "$mod, R, submap, resize"
      ];

      # Repeat binds for volume and brightness
      binde = [
        ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- && $scripts/volume.sh"
        ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+ && $scripts/volume.sh"
      ];

      # Brightness binds
      bindle = [
        ", XF86MonBrightnessUp, exec, brightnessctl -q s 2%+ && $scripts/brightness.sh"
        ", XF86MonBrightnessDown, exec, brightnessctl -q s 2%- && $scripts/brightness.sh"
      ];

      # Mouse binds
      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

      # ==================== LAYER RULES ====================
      layerrule = [
        "ignorezero, waybar"
        "blur, waybar"
        "blurpopups, waybar"
        "ignorezero, launcher"
        "blur, launcher"
        "ignorezero, notifications"
        "blur, notifications"
      ];

      # ==================== WINDOW RULES ====================
      windowrulev2 = [
        # Workspace rules
        "workspace 1, class:(com.mitchellh.ghostty)$"
        "workspace 1, class:(Alacritty)$"
        "workspace 2, class:(zen-beta)$"
        "workspace 3, class:(nautilus)$"
        "workspace 3, class:(Thunar)$"
        "workspace 3, title:^(yazi)$"
        "workspace 4, class:(mpv)$"
        "workspace 4, class:(ncmpcpp)$"
        "workspace 4, class:(cava)$"
        "workspace 5, class:(org.telegram.desktop)$"
        "workspace 5, class:(sioyek)$"
        "workspace 7, class:(steam)$"
        "workspace 8, class:^(tremc)$"
        "workspace 8, class:(org.qbittorrent.qBittorrent)$"

        # Floating rules
        "float, class:(org.pulseaudio.pavucontrol)$"
        "float, class:(polkit-gnome-authentication-agent-1)$"
        "float, title:(Picture-in-Picture)$"
        "float, title:(Select Document)$"
        "float, class:(ncmpcpp)$"
        "float, class:(cava)$"
        "float, title:(File Operation Progress)$"
        "float, title:(Preferences)$"
        "float, title:(Confirm to replace files)$"
        "float, class:(waypaper)$"

        # Size rules
        "size 600 600, class:(ncmpcpp)$"
        "size 600 600, class:(cava)$"

        # Position rules
        "move 15 81, class:(ncmpcpp)$"
        "move 751 81, class:(cava)$"

        # Idle inhibit rules
        "idleinhibit focus, class:(mpv)$"
        "idleinhibit fullscreen, class:(brave-browser)$"
        "idleinhibit fullscreen, class:(zen-beta)$"
        "idleinhibit fullscreen, class:(sioyek)$"
        "idleinhibit fullscreen, class:(Kodi)$"

        # Tearing rules
        "immediate, class:(cs2)$"
        "immediate, class:(steam_app_1245620)$"
        "immediate, class:(Minecraft* 1.20.4)$"
      ];
    };

    # ==================== EXTRA CONFIG ====================
    extraConfig = ''
      # Resize submap bindings
      submap = resize
      binde = , right, resizeactive, 10 0
      binde = , left, resizeactive, -10 0
      binde = , up, resizeactive, 0 -10
      binde = , down, resizeactive, 0 10
      bind = , escape, submap, reset
      submap = reset
    '';
  };
  xdg.configFile.hypr = {
    source = ./scripts;
    recursive = true;
  };
}
