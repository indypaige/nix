{ env, ... }:

{
  settings = {
    splash    = false;

    wallpaper = map (x: x // { monitor = env.output.name; }) env.wallpaper;
  };
}
