{
  pkgs,
  username,
  ...
}: {
  services.jellyfin = {
    enable = true;
    openFirewall = true;
    user = username;
    group = "users";
  };
  environment.systemPackages = with pkgs; [
    mkvtoolnix
  ];
}
