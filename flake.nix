{
  description = "Helixoid's Hyprland NixOS Setup :)";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... } @ inputs:
  {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./nixos/configuration.nix
        ./nixos/hyprland.nix
      ];
    };
  };
}
