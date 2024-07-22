{
  description = "XNM's NixOS Configuration";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = { nixpkgs, ... } @ inputs:
  {
    nixosConfigurations.Acer-Aspire-7 = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./configuration.nix
        ./hyprland.nix
      ];
    };
  };
}
