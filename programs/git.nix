{ pkgs, global, ... }:

{
  settings = {
    user        = {
      email = global.email;
      name  = global.name;
    };

    extraConfig = {
      "gpg \"ssh\"" = {
    	  program = "${pkgs.lib.getExe' pkgs._1password-gui "op-ssh-sign"}";
      };

      commit        = {
        gpgsign = true;
      };

      user          = {
        signingKey = global.key;
      };

      gpg           = {
        format = "ssh";
      };
    };
  };
}
