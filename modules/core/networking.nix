{hostname, ...}: {
  networking = {
    hostName = hostname;
    networkmanager = {
      enable = true;
      dns = "none";
    };
    nameservers = ["1.1.1.1" "1.0.0.1"];
    firewall = {
      enable = true;
    };
  };
  programs.sniffnet.enable = true;
}
