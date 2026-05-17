{ pkgs, global, ... }:

{
  enableDefaultConfig = false;

	matchBlocks."*"	    = { };

	extraConfig 	      = "IdentityAgent ${global.onepass}";
}
