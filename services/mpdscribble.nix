{ env, ... }:

{
  endpoints = {
    "last.fm" = {
      passwordFile = "/home/${env.name}/lastfmpass";
      username     = env.lastfm;
    };
  };
}
