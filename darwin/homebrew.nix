{ pkgs, ... }:

{
  homebrew = {
    enable = true;

    onActivation = {
      cleanup = "zap";
      autoUpdate = true;
      upgrade = true;
    };

    taps = [];

    casks = pkgs.callPackage ../modules/darwin/casks.nix {};

    brews = [
      "encore"
      "tilt"
    ];

    masApps = {
    };
  };
}
