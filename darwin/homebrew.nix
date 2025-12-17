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
      "gitkraken-cli"
      "1password"
      "1password-cli"
      "claude"
      "cleanshot"

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

      # Additional Browsers
      "brave-browser"

      # Entertainment
      "spotify"
    ];

    brews = [];

    masApps = {
    };
  };
}
