{ env, ... }:

{
  musicDirectory = "/home/${env.user}/music";

  extraConfig = ''
      audio_output {
        type "pipewire"
        name "PIPEWIRE"
      }
  '';
}
