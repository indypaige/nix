{ global, pkgs, ... }:

{
  settings         = {
    folders = global.sync.folders;
    devices = global.sync.devices;
    gui     = {
      password = global.pass;
      user     = global.name;
    };
  };
}
