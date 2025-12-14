{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
  };

  home.file.".zshrc.nix".text = ''
    # ============================================
    # Nix-managed additions to zsh
    # Source this from your main .zshrc by adding:
    # [ -f "$HOME/.zshrc.nix" ] && source "$HOME/.zshrc.nix"
    # ============================================

    export PATH="/run/current-system/sw/bin:$HOME/.nix-profile/bin:$PATH"

    if command -v zoxide &> /dev/null; then
      eval "$(zoxide init zsh)"
    fi

    alias ls="eza"
    alias cat="bat"
    alias z="zoxide"

    alias nix-update="darwin-rebuild switch --flake ~/.config/nix"
    alias nix-clean="nix-collect-garbage -d && sudo nix-collect-garbage -d"
    alias nix-search="nix search nixpkgs"
    alias nix-list="nix profile list"
    alias nix-history="nix profile history"

    alias k="kubectl"
    alias kctx="kubectx"
    alias kns="kubens"
    alias tf="terraform"
    alias lg="lazygit"
  '';
}
