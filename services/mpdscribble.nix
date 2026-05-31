{ env, ... }:

{
  endpoints = {
    "last.fm" = {
      passwordFile = "/home/${env.user}/lastfmpass";
      username     = env.lastfm;
    };
  };
}
