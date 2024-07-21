{
  description = "Helixoid's Nixos Configuration with Hyprland :)";
  
  nixConfig = {
    extra-substituters = ["https://hyprland.cachix.org"];
    extra-trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
  };

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
