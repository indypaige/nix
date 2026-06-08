{ pkgs, env, ... }:

{
  package      = env.inputs.quickshell.packages.${env.system}.default;
  activeConfig = "gui";

  configs      = {
    gui = env.inputs.gui.${system}.default;
  };

  systemd      = {
    enable = true;
  };
}
