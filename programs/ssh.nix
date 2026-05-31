{ pkgs, env, ... }:

{
  enableDefaultConfig = false;

	matchBlocks."*"	    = { };

	extraConfig 	      = "IdentityAgent ${env.onepass}";
}
