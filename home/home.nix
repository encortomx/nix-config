{ config, pkgs, lib, username, ... }:

{
  imports = [
    ./packages.nix
    ./shell.nix
    ./programs/git.nix
    ./programs/ghostty.nix
    ./programs/1password.nix
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

  home.sessionPath = [
    "$HOME/.local/share/mise/shims"
    "$HOME/.local/bin"
  ];

  home.file.".ssh/.keep".text = "";

  home.activation.backupSsh = ''
    if [ ! -d "$HOME/.ssh.backup" ] && [ -d "$HOME/.ssh" ]; then
      echo "Creating SSH backup..."
      cp -r "$HOME/.ssh" "$HOME/.ssh.backup"
    fi
  '';

  home.activation.miseInstall = lib.hm.dag.entryAfter ["writeBoundary"] ''
    PATH="${pkgs.mise}/bin:$PATH"
    if command -v mise &> /dev/null; then
      echo "Installing mise tools..."
      $DRY_RUN_CMD mise install
    fi
  '';
}
