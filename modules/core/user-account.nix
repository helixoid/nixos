{
  pkgs,
  username,
  ...
}: {
  users.users.${username} = {
    isNormalUser = true;
    description = "Klynt";
    extraGroups = ["networkmanager" "wheel"];
    shell = pkgs.fish;
    home = "/home/${username}";
    # packages = with pkgs; [];
  };
  programs.fish.enable = true;
}
