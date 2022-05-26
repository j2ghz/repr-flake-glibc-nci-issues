{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nci.url = "github:yusdacra/nix-cargo-integration";
    nci.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, nci }:
    nci.lib.makeOutputs {
      # Documentation and examples:
      # https://github.com/yusdacra/rust-nix-templater/blob/master/template/flake.nix
      root = ./.;
    };
}
