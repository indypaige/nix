{ env, ... }:

{
  musicDirectory = "/home/${user.name}/music";

  extraConfig = ''
      audio_output {
        type "pipewire"
        name "PIPEWIRE"
      }
  '';
}
