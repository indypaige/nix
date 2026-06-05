{ ... }:

let extraConfig = builtins.readFile ./init.el;
in {
  inherit extraConfig;

  extraPackages = epkgs: with epkgs; [
    rainbow-identifiers
    gruber-darker-theme
    rainbow-delimiters
    multiple-cursors
    org-super-agenda
    org-superstar
    haskell-mode
    dired-launch
    org-contrib
    inheritenv
    rust-mode
    org-recur
    qml-mode
    poly-org
    lua-mode
    nix-mode
    ligature
    polymode
    org-roam
    envrc
    magit
    dash
    smex
  ];
}
