{ pkgs, env, ... }:

{
  package      = env.inputs.quickshell.packages.${env.system}.default;
  activeConfig = "gui";

  configs      = {
    gui = env.inputs.gui.packages.${env.system}.default;
  };

  systemd      = {
    enable = true;
    target = "hyprland-session.target";
  };
}
