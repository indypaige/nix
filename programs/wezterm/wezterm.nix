{ pkgs, ... }:

let extraConfig = builtins.readFile ./config.lua;
in {
  inherit extraConfig;
}
