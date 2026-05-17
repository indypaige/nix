{ pkgs, global, ... }:

{
  settings = {
    cache.enabled = true;
    desktop_icons = true;

    general       = {
      grab_focus = true;
    };

    ui            = {
      window_size = "400 260";
    };
  };
}
