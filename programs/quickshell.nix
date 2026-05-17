{ global, pkgs, ... }:

{
  package      = global.quickshell.package;
  configs      = global.quickshell.configs;

  activeConfig = "sidebar";

  systemd      = {
    enable = true;
    target = "hyprland-session.target";
  };
}
