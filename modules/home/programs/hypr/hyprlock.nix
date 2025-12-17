{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        disable_loading_bar = true;
        hide_cursor = true;
        grace = 0;
        no_fade_in = false;
      };

      # Blurred background
      background = [
        {
          monitor = "";
          path = "screenshot";
          blur_size = 9;
          blur_passes = 3;
        }
      ];

      # Time
      label = [
        {
          monitor = "";
          text = ''cmd[update:1000] echo "$(date +"%H:%M")"'';
          color = "rgba(255, 255, 255, 0.9)";
          font_size = 120;
          font_family = "Inter Display Black";
          position = "0, 200";
          halign = "center";
          valign = "center";
        }

        # Date
        {
          monitor = "";
          text = ''cmd[update:60000] echo "$(date +"%A, %B %d")"'';
          # color = "rgba(255, 255, 255, 0.6)";
          font_size = 24;
          font_family = "Inter Display Bold";
          position = "0, 80";
          halign = "center";
          valign = "center";
        }

        # Typing animation instruction
        {
          monitor = "";
          text = "Type to unlock";
          color = "rgba(255, 255, 255, 0.4)";
          font_size = 16;
          font_family = "Inter Display Medium";
          position = "0, -200";
          halign = "center";
          valign = "center";
        }
      ];

      # Password field with typing animation
      input-field = [
        {
          monitor = "";
          size = "400, 60";
          outline_thickness = 2;
          dots_size = 0.2;
          dots_spacing = 0.3;
          dots_center = true;
          outer_color = "rgba(255, 255, 255, 0.1)";
          inner_color = "rgba(0, 0, 0, 0.2)";
          font_color = "rgba(255, 255, 255, 0.9)";
          fade_on_empty = true;
          fade_timeout = 2000;
          placeholder_text = "";
          hide_input = false;
          rounding = 15;
          check_color = "rgba(100, 200, 100, 0.8)";
          fail_color = "rgba(200, 100, 100, 0.8)";
          fail_text = "<i>Invalid</i>";
          fail_timeout = 2000;
          fail_transitions = 300;
          position = "0, -280";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };
}
