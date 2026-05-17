{ pkgs, ... }:

{
	settings = {
		input-field = [
			{
				fade_on_empty = true;
				dots_center   = true;
 				position      = "0, -80";
				size          = "200, 50";
			}
		];

		animations  = {
			enabled = false;
		};

		general     = {
			ignore_empty_input = true;
			hide_cursor 	     = true;
		};
	};
}
