{ global, ... }:

{
  shellAliases = {
    ls = "eza --icons always --color always";
  };

  settings     = {
    show_banner = false;
  };

  configFile   = {
    text = ''
    $env.NIX_PROFILES = "/etc/profiles/per-user/${global.name}"

    ${global.term-pets}/bin/term-pets static dino --frame 2
    '';
  };
}
