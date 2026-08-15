{ pkgs, env, ... }:

{
  settings = {
    user        = {
      email = env.email;
      name  = env.user;
    };

    extraConfig = {

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
