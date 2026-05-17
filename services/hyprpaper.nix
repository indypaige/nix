{ global, pkgs, ... }:

{
  settings = {
    splash    = false;

    wallpaper = map (x: x // { monitor = global.output.name; }) global.wallpaper;
  };
}
