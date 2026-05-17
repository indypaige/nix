{ pkgs, ... }: {
        colorScheme = "dark";

        iconTheme   = {
          package = pkgs.adwaita-icon-theme;
          name    = "Adwaita";
        };

        theme       = {
          package = pkgs.flat-remix-gtk;
          name    = "Flat-Remix-GTK-Violet-Darkest";
        };

        font        = {
          name = "Iosevka";
          size = 10;
        };
}
