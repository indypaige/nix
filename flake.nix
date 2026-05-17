{
  description = "nixos configuration flake";

  outputs     = { self, nixpkgs, ... }: { home = import ./home.nix; };
}
