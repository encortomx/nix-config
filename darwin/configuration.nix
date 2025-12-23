{ pkgs, username, ... }:

{
  imports = [
    ./homebrew.nix
    ./system-settings.nix
    ../modules/darwin/dock
  ];

  system.primaryUser = username;

  nix = {
    settings = {
      trusted-users = [ "root" username ];
      extra-substituters = [ "https://devenv.cachix.org" ];
      extra-trusted-public-keys = [ "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw=" ];
    };
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    git
    netbird-ui
    dockutil
  ];

  services.netbird.enable = true;

  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
    nerd-fonts.hack
    nerd-fonts.meslo-lg
  ];

  programs.zsh.enable = true;

  users.users.${username} = {
    name = username;
    home = "/Users/${username}";
    shell = pkgs.zsh;
  };

  local.dock = {
    enable = true;
    username = username;
    entries = [
      { path = "/Applications/Zen.app/"; }
      { path = "/Applications/Google Chrome.app/"; }
      { path = "/Applications/Helium.app/"; }
      { path = "/Applications/Spotify.app/"; }
      { path = "/Applications/PhpStorm.app/"; }
      { path = "/Applications/Cursor.app/"; }
      { path = "/Applications/Ghostty.app/"; }
      { path = "/Applications/Warp.app/"; }
      { path = "/Applications/Visual Studio Code.app/"; }
      { path = "/Applications/GitKraken.app/"; }
      { path = "/Applications/Insomnia.app/"; }
      { path = "/Applications/DBngin.app/"; }
      { path = "/Applications/Slack.app/"; }
      {
        path = "/Users/${username}/Downloads";
        section = "others";
        options = "--sort dateadded --view grid --display folder";
      }
      {
        path = "/Applications";
        section = "others";
        options = "--sort name --view grid --display folder";
      }
    ];
  };

  system.stateVersion = 5;
}
