{ env, ... }:

{
  shellAliases = {
    ls = "eza --icons always --color always";
  };

  settings     = {
    show_banner = false;
  };

  configFile   = {
    text = ''
    $env.NIX_PROFILES = "/etc/profiles/per-user/${env.user}"
    '';
  };
}
