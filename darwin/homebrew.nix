{ ... }:

{
  homebrew = {
    enable = true;

    onActivation = {
      cleanup = "zap";
      autoUpdate = true;
      upgrade = true;
    };

    taps = [];

    casks = [
      # Development
      "cursor"
      "visual-studio-code"
      "jetbrains-toolbox"
      "orbstack"
      "gitkraken"

      # PHP Development
      "herd"

      # Terminals
      "ghostty"
      "warp"

      # Browsers
      "arc"
      "zen"
      "google-chrome"

      # API & Communication
      "slack"
      "postman"
      "insomnia"

      # Productivity
      "raycast"
      "setapp"

      # Network & VPN
      "nordvpn"
      "netbird-ui"

      # Additional Browsers
      "brave-browser"
    ];

    brews = [
    ];

    masApps = {
    };
  };
}
