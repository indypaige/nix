{ pkgs, ... }:

let schema = "https://starship.rs/config-schema.json";
in {
  enableBashIntegration  = true;

  settings                  = {
    "$schema"   = schema;

    add_newline = false;

    format      = "$directory\\$ ";
  };
}
