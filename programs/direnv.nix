{ pkgs, ... }:

{
  enableNushellIntegration = true;
  nix-direnv.enable        = true;
  silent                   = true;
}
