{ pkgs, ... }:

{
  package    = pkgs.chromium;

  extensions = [
			{ id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; } # darkreader
			{ id = "aeblfdkhhhdcdjpifhhbdiojplfjncoa"; } # 1password
  ];
}
