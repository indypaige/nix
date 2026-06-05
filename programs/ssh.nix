{ pkgs, env, ... }:

{
  enableDefaultConfig = false;
  settings."*"        = { };
	extraConfig 	      = "IdentityAgent ${env.onepass}";
}
