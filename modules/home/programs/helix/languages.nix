{
  programs.helix = {
    languages = {
      language = [
        {
          name = "nix";
          auto-format = true;
          formatter = {
            command = "alejandra";
            args = ["--quiet"];
          };
        }
        {
          name = "typst";
          language-servers = ["tinymist"];
          auto-format = true;
        }
      ];
      languages = {
        language-server.tinymist = {
          command = "tinymist";
          config = {
            formatterMode = "typstyle";
          };
        };
      };
    };
  };
}
