{ global, ... }:

{
  musicDirectory = "/home/${global.name}/music";

  extraConfig = ''
      audio_output {
        type "pipewire"
        name "PIPEWIRE"
      }
  '';
}
