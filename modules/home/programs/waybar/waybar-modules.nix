{
  programs.waybar.settings.mainBar = {
    # ===== LEFT MODULES =====
    cpu = {
      format = " {usage}%";
      tooltip = true;
      interval = 5;
    };

    memory = {
      format = " {}%";
      tooltip = true;
      on-click = "gnome-disks &";
    };

    temperature = {
      interval = 10;
      hwmon-path = "/sys/devices/platform/coretemp.0/hwmon/hwmon4/temp1_input";
      critical-threshold = 100;
      format-critical = " {temperatureC}";
      format = " {temperatureC}°C";
    };

    battery = {
      states = {
        warning = 30;
        critical = 20;
      };
      on-click-middle = "acpi -i";
      format = "{icon} {capacity}%";
      format-full = "{icon} {capacity}%";
      format-charging = "󰂄 {capacity}%";
      format-plugged = "󰚥 {capacity}%";
      format-alt = "{time} {icon}";
      format-icons = ["󰂎" "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"];
    };

    "niri/window" = {
      format = "{title}";
    };

    "hyprland/window" = {
      format = "{title}";
    };

    # ===== CENTER MODULES =====
    "niri/workspaces" = {
      format = "{icon}";
      format-icons = {
        active = "";
        default = "";
      };
    };

    "hyprland/workspaces" = {
      format = "{icon}";
      format-icons = {
        active = "";
        default = "";
      };
    };

    # ===== RIGHT MODULES =====
    tray = {
      icon-size = 16;
      spacing = 10;
    };

    idle_inhibitor = {
      format = "{icon}";
      format-icons = {
        activated = "";
        deactivated = "";
      };
    };

    network = {
      format-wifi = "{icon} {essid}";
      format-ethernet = "󰌘 {ipaddr}";
      format-disconnected = "󰌙 ";
      format-alt = "󰕒 {bandwidthUpBytes} 󰇚 {bandwidthDownBytes}";
      tooltip-format-wifi = "{essid} - Signal: {signalStrength}%";
      tooltip-format-ethernet = "{ifname} - {ipaddr}";
      tooltip-format-disconnected = "Disconnected";
      format-icons = ["󰤯" "󰤟" "󰤢" "󰤥" "󰤨"];
      interval = 1;
      max-length = 30;
    };

    pulseaudio = {
      format = "{icon} {volume}%";
      format-muted = "󰝟 {format_source}";
      format-bluetooth = "󰥰 {volume}%";
      format-bluetooth-muted = "󰗿 {icon}";
      format-source = " {volume}%";
      format-source-muted = "";
      format-icons = {
        headphone = "";
        hands-free = "";
        headset = "";
        phone = "";
        car = "";
        default = ["" "" ""];
      };
      on-click = "pavucontrol &";
    };

    "pulseaudio#microphone" = {
      format = "{format_source}";
      format-source = " {volume}%";
      format-source-muted = "";
      on-click = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
      on-click-right = "pavucontrol -t 4";
      on-scroll-up = "wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%-";
      on-scroll-down = "wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%+";
      tooltip-format = "{source_desc} | {source_volume}%";
      scroll-step = 5;
    };

    backlight = {
      format = "{icon} {percent}%";
      format-icons = ["󰃜" "󰃞" "󰃟" "󰃠"];
      tooltip-format = "backlight {percent}%";
      on-scroll-up = "brightnessctl s +5%";
      on-scroll-down = "brightnessctl s 5%-";
      smooth-scrolling-threshold = 1;
    };

    bluetooth = {
      format = "󰂯";
      format-disabled = "󰂲";
      format-connected = "󰂱 {num_connections}";
      tooltip-format = " {device_alias}";
      tooltip-format-connected = " {device_enumerate}";
      tooltip-format-enumerate-connected = " {device_alias} 󰂄{device_battery_percentage}%";
      tooltip = true;
      on-click = "blueman-manager &";
    };

    clock = {
      format = "󰥔 {:%H:%M} ";
      tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
      format-alt = "󰃭 {:%d-%m-%Y}";
    };
  };
}
