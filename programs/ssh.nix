{ pkgs, env, ... }:

{
  enableDefaultConfig = false;
	extraConfig 	      = "IdentityAgent ${env.onepass}";
}
