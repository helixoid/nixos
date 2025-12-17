{
  imports = [
    ./hardware-configuration.nix
    ../../../modules/core
    ../../../modules/gaming
    ./laptop-power-management.nix
    ../../../modules/drivers/open-razer.nix
  ];
}
