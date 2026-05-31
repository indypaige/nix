{ pkgs, global, env, ... }:

{
  settings = {
    user        = {
      email = env.email;
      name  = env.user;
    };

    extraConfig = {
      "gpg \"ssh\"" = {
    	  program = "${pkgs.lib.getExe' pkgs._1password-gui "op-ssh-sign"}";
      };

      commit        = {
        gpgsign = true;
      };

      user          = {
        signingKey = env.ssh;
      };

      gpg           = {
        format = "ssh";
      };
    };
  };
}
