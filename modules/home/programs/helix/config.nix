{
  programs.helix = {
    settings = {
      theme = "gruvbox-transparent";

      editor = {
        line-number = "relative";
        mouse = false;
        color-modes = true;
        bufferline = "multiple";
        popup-border = "all";
        cursorline = true;
        end-of-line-diagnostics = "hint";

        lsp = {
          display-inlay-hints = true;
        };

        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };

        statusline = {
          left = ["mode" "spinner" "file-name" "file-modification-indicator"];
          center = ["file-type"];
          right = ["diagnostics" "selections" "position" "file-encoding" "file-line-ending"];
          separator = "│";

          mode = {
            normal = "NORMAL";
            insert = "INSERT";
            select = "SELECT";
          };
        };

        file-picker = {
          hidden = false;
        };

        inline-diagnostics = {
          cursor-line = "warning";
        };
      };

      keys = {
        insert = {
          "C-[" = "normal_mode";
        };

        normal = {
          ret = "goto_word";
        };
      };
    };

    themes = {
      gruvbox-transparent = {
        inherits = "gruvbox_dark_hard";
        "ui.background" = {};
        "ui.popup" = {};
        "ui.completion" = {};
        "ui.menu" = {};
        "ui.help" = {};
      };
    };
  };
}
