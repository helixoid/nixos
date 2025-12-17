{
  xdg.configFile."niri/config.kdl".text = ''
    // This config is being managed by Home Manager on NixOS!
    input {
        keyboard {
            xkb {
                layout "us"
            }
            numlock
        }
        mouse {
            accel-profile "flat"
        }
        touchpad {
            tap
            natural-scroll
            accel-profile "adaptive"
        }
        focus-follows-mouse
    }
    output "eDP-1" {
        // Run `niri msg outputs` while inside a niri instance to list all outputs and their modes.
        mode "1920x1080@60"
        scale 1
        transform "normal"
        position x=0 y=0
    }
    layout {
        gaps 5
        center-focused-column "never"
        preset-column-widths {
            proportion 0.33333
            proportion 0.5
            proportion 0.66667
            proportion 1.0
        }
        preset-window-heights {
            proportion 0.33333
            proportion 0.5
            proportion 0.66667
            proportion 1.0
        }
        default-column-width {
            proportion 0.5
        }
        focus-ring {
            width 2
            active-color "#d8dadd"
            inactive-color "#0b0b0c"
        }
        border {
            off
        }
        struts {
            left 0
            right 0
            top 0
            bottom 0
        }
        background-color "transparent"
    }
    // startup processes
    // spawn-at-startup "waybar"
    spawn-at-startup "swww-daemon"
    spawn-at-startup "niriswitcher"
    spawn-at-startup "xwayland-satellite"
    spawn-at-startup "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
    spawn-at-startup "cliphist" "wipe"
    layer-rule {
        match namespace="^swww-daemon$"
        place-within-backdrop true
    }
    animations {

    }
    window-rule {
        // open-maximized true
        geometry-corner-radius 10
        clip-to-geometry true
    }
    window-rule {
        match app-id="firefox"
        match app-id="zen-beta"
        match app-id="code"
        match app-id="dev.zed.Zed"
        default-column-width {
            proportion 1.0
        }
    }
    window-rule {
        match app-id="org.gnome.Calculator"
        match app-id="steam"
        match app-id="com.saivert.pwvucontrol"
        match app-id="Alacritty" title="Updater"
        match app-id="Alacritty" title="nmtui"
        match app-id="Alacritty" title="Wallpaper Selector"
        match app-id="chrome-ophjlpahpchlmihnnnihgmmeilfjmjjc__index.html-Default"
        open-floating true
        shadow {
            on
        }
    }
    binds {
        // Applications
        Mod+Return {
            spawn "ghostty"
        }
        Mod+Space {
            spawn "fuzzel"
        }
        Alt+I {
            spawn "zen"
        }
        Alt+E {
            spawn "thunar"
        }
        Mod+L {
            spawn "hyprlock"
        }
        Mod+C {
            spawn "~/.config/fuzzel/clipboard.sh"
        }
        Mod+Backspace {
            spawn "~/.config/fuzzel/powermenu.sh"
        }
        // Backlight and Audio
        XF86MonBrightnessUp allow-when-locked=true {
            spawn "brightnessctl" "set" "+5%"
        }
        XF86MonBrightnessDown allow-when-locked=true {
            spawn "brightnessctl" "set" "5%-"
        }
        XF86AudioRaiseVolume allow-when-locked=true {
            spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.05+"
        }
        XF86AudioLowerVolume allow-when-locked=true {
            spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.05-"
        }
        XF86AudioMute allow-when-locked=true {
            spawn "wpctl" "set-mute" "@DEFAULT_AUDIO_SINK@" "toggle"
        }
        XF86AudioPlay allow-when-locked=true {
            spawn "playerctl" "play-pause"
        }
        XF86AudioPause allow-when-locked=true {
            spawn "playerctl" "pause"
        }
        XF86AudioNext allow-when-locked=true {
            spawn "playerctl" "next"
        }
        XF86AudioPrev allow-when-locked=true {
            spawn "playerctl" "previous"
        }
        // Windows and Columns
        Mod+Q {
            close-window
        }
        Mod+W {
            switch-preset-column-width
        }
        Mod+H {
            switch-preset-window-height
        }
        Mod+T {
            toggle-window-floating
        }
        Mod+M {
            maximize-column
        }
        Mod+Shift+M {
            maximize-window-to-edges
        }
        Mod+F {
            fullscreen-window
        }
        Mod+Left {
            focus-column-left
        }
        Mod+Right {
            focus-column-right
        }
        Mod+Down {
            focus-window-down
        }
        Mod+Up {
            focus-window-up
        }
        Mod+Ctrl+Left {
            move-column-left
        }
        Mod+Ctrl+Right {
            move-column-right
        }
        Mod+Ctrl+Down {
            move-window-down
        }
        Mod+Ctrl+Up {
            move-window-up
        }
        Mod+Home {
            focus-column-first
        }
        Mod+End {
            focus-column-last
        }
        Mod+Ctrl+Home {
            move-column-to-first
        }
        Mod+Ctrl+End {
            move-column-to-last
        }
        Mod+Shift+Left {
            set-column-width "-10%"
        }
        Mod+Shift+Right {
            set-column-width "+10%"
        }
        Mod+Shift+Up {
            set-window-height "+10%"
        }
        Mod+Shift+Down {
            set-window-height "-10%"
        }
        Mod+BracketLeft {
            consume-or-expel-window-left
        }
        Mod+BracketRight {
            consume-or-expel-window-right
        }
        Mod+Comma {
            consume-window-into-column
        }
        Mod+Period {
            expel-window-from-column
        }
        Alt+Tab repeat=false {
            spawn "pkill" "-USR1" "niriswitcher"
        }
        // Workspaces
        Mod+Page_Down {
            focus-workspace-down
        }
        Mod+Page_Up {
            focus-workspace-up
        }
        Mod+Shift+Page_Down {
            move-column-to-workspace-down
        }
        Mod+Shift+Page_Up {
            move-column-to-workspace-up
        }
        Mod+Shift+1 {
            move-column-to-workspace 1
        }
        Mod+Shift+2 {
            move-column-to-workspace 2
        }
        Mod+Shift+3 {
            move-column-to-workspace 3
        }
        Mod+Shift+4 {
            move-column-to-workspace 4
        }
        Mod+Shift+5 {
            move-column-to-workspace 5
        }
        Mod+Shift+6 {
            move-column-to-workspace 6
        }
        Mod+Shift+7 {
            move-column-to-workspace 7
        }
        Mod+Shift+8 {
            move-column-to-workspace 8
        }
        Mod+Shift+9 {
            move-column-to-workspace 9
        }
        Mod+Shift+0 {
            move-column-to-workspace 10
        }
        Mod+A {
            toggle-overview
        }
        // Screenshots
        Print {
            screenshot
        }
        Ctrl+Print {
            screenshot-window
        }
        Shift+Print {
            screenshot-screen
        }
    }
    // misc configuration
    screenshot-path "~/Pictures/Screenshots/Screenshot From %Y-%m-%d %H-%M-%S.png"
    prefer-no-csd
    environment {
        DISPLAY ":0"
    }
    hotkey-overlay {
        skip-at-startup
    }
    cursor {
        hide-when-typing
        hide-after-inactive-ms 1000
    }
  '';
}
