{ pkgs, env, ... }:

with pkgs.lib;

let
  hyprlandPkgs = env.inputs.hyprland.packages.${env.system};
in {
  xwayland.enable = true;

  portalPackage   = hyprlandPkgs.xdg-desktop-portal-hyprland;
  package         = hyprlandPkgs.hyprland;

  plugins         = [ ];

  configType      = "hyprlang";

  settings        = {
    animations.enabled = false; # no, thanks

    "$m"               = "SUPER";

    env                = [
      "NIX_PROFILES=/etc/profiles/per-user/${env.user}"
      "GRIM_DEFAULT_DIR,/home/${env.user}/Pictures"
      "QT_QUICK_BACKEND=software"
      "XCURSOR_SIZE,15"
    ];

    monitorv2          = [
      {
        output = env.output.name;
        mode   = env.output.mode;
        vrr    = 1;
      }
    ];

    bindm              = [
      "ALT SHIFT, mouse:272, resizewindow"
      "ALT, mouse:272, movewindow"
    ];

    bind               = let
      ito10 = builtins.genList builtins.toString 9;
      binds = concatMap (flip map ito10) [
        (x: "$m SHIFT, ${x}, movetoworkspace, ${x}")
        (x: "$m, ${x}, workspace, ${x}")
      ];
    in binds ++ [
      "$m, a, exec, [float] hyprpwcenter"
      "$m, p, exec, grim -g \"$(slurp)\""
      "$m SHIFT, j, movewindow, l"
      "$m SHIFT, k, movewindow, r"
      "$m, f, exec, hyprlauncher"
      "ALT, v, togglefloating"
      "$m, l, exec, hyprlock"
      "$m, q, exec, wezterm"
      "$m, j, movefocus, l"
      "$m, k, movefocus, r"
      "$m, c, killactive"
      "$m, m, exit"
    ];

    general            = {
      "col.inactive_border" = "0xff1E1E2E";
      "col.active_border"   = "0xff85C1DC";

      gaps_out              = 12;
      gaps_in               = 8;

      border_size           = 2;
    };

    decoration         = {
      rounding = 4;
    };

    misc               = {
      enable_swallow = true;
      swallow_regex  = "org\.wezfurlong\.wezterm";
    };

    plugin             = {
      borders-plus-plus = {
        enabled = true;
      };
    };
  };
}
