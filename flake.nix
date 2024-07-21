{
  description = "Helixoid's Nixos Configuration with Hyprland :)";
  
  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
  };

  outputs = { self, nixpkgs, hyprland, ... } @ inputs:
  {
    nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
          system = x86_64-linux;
          specialArgs = { inherit inputs; };
          config.allowUnfree = true;
          modules = [
            ./configuration.nix
            ./hyprland.nix
          ];
        };
    };
  };
}
