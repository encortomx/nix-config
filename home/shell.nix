{ config, pkgs, ... }:

let
  shellAliases = {
    ls = "eza";
    cat = "bat";
    z = "zoxide";

    nix-update = "darwin-rebuild switch --flake ~/.config/nix#MacBook-Pro-de-David";
    nix-clean = "nix-collect-garbage -d && sudo nix-collect-garbage -d";
    nix-search = "nix search nixpkgs";
    nix-list = "nix profile list";
    nix-history = "nix profile history";

    k = "kubectl";
    kctx = "kubectx";
    kns = "kubens";
    tf = "terraform";
    lg = "lazygit";

    ga = "git add";
    gc = "git commit";
    gco = "git checkout";
    gp = "git push";
    gs = "git status";
    gl = "git log --oneline --graph";
  };
in
{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    settings = {
      git_commit = {
        commit_hash_length = 7;
        tag_symbol = " ";
      };
      git_status = {
        conflicted = "=";
        ahead = "⇡\${count}";
        behind = "⇣\${count}";
        diverged = "⇕⇡\${ahead_count}⇣\${behind_count}";
        untracked = "?\${count}";
        stashed = "$";
        modified = "!\${count}";
        staged = "+\${count}";
        renamed = "»\${count}";
        deleted = "✘\${count}";
      };
      username = {
        style_user = "cyan bold";
        style_root = "red bold";
        format = "[\$user](\$style) on ";
        disabled = false;
        show_always = true;
      };
      custom.git_email = {
        command = "git config user.email 2>/dev/null || echo 'no git'";
        when = "git rev-parse --is-inside-work-tree 2>/dev/null";
        format = "on [\$output](\$style) ";
        style = "bright-yellow";
        shell = ["sh"];
      };
    };
  };

  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    nix-direnv.enable = true;
  };

  programs.atuin = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    settings = {
      auto_sync = true;
      sync_frequency = "5m";
      search_mode = "fuzzy";
    };
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
    historyControl = [ "ignoredups" "ignorespace" ];
    shellAliases = shellAliases;
    initExtra = ''
      export PATH="$HOME/.local/bin:/run/current-system/sw/bin:$HOME/.nix-profile/bin:$PATH"
      export GPG_TTY=$(tty)
    '';
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    shellAliases = shellAliases;

    oh-my-zsh = {
      enable = true;
      theme = "";
      plugins = [
        "1password"
        "argocd"
        "aws"
        "docker"
        "docker-compose"
        "gcloud"
        "git"
        "gh"
        "golang"
        "helm"
        "kubectl"
        "laravel"
        "macos"
        "podman"
        "terraform"
      ];
    };

    initContent = ''
      export PATH="$HOME/.local/bin:/run/current-system/sw/bin:$HOME/.nix-profile/bin:$PATH"
      export GPG_TTY=$(tty)

      [ -f "$HOME/.zshrc.local" ] && source "$HOME/.zshrc.local"
    '';
  };
}
