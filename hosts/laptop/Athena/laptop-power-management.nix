{
  # Thermald is only for Intel CPUs.
  services.thermald.enable = true;

  # services.auto-cpufreq = {
  #   enable = true;
  #   settings = {
  #     battery = {
  #       governor = "powersave";
  #       turbo = "never";
  #     };
  #     charger = {
  #       governor = "performance";
  #       turbo = "auto";
  #     };
  #   };
  # };

  services.tlp = {
    enable = true;
  };
}
