{ pkgs, username, ... }:

{
  imports = [
    ./homebrew.nix
    ./system-settings.nix
  ];

  system.primaryUser = username;

  nix.enable = false;

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    git
    netbird-ui
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

  system.stateVersion = 5;
}
