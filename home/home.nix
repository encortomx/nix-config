{ config, pkgs, username, ... }:

{
  imports = [
    ./packages.nix
    ./shell.nix
    ./programs/git.nix
    ../modules/kubernetes.nix
  ];

  home.username = username;
  home.homeDirectory = "/Users/${username}";
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;

  home.sessionVariables = {
    EDITOR = "vim";
    VISUAL = "code";
  };

  home.file.".ssh/.keep".text = "";

  home.activation.backupSsh = ''
    if [ ! -d "$HOME/.ssh.backup" ] && [ -d "$HOME/.ssh" ]; then
      echo "Creating SSH backup..."
      cp -r "$HOME/.ssh" "$HOME/.ssh.backup"
    fi
  '';
}
