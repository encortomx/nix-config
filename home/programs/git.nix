{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "David Sánchez";
        email = "sancheezpiiedra7@gmail.com";
      };

      alias = {
        co = "checkout";
        br = "branch";
        ci = "commit";
        st = "status";
        unstage = "reset HEAD --";
        last = "log -1 HEAD";
        lg = "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit";
        history = "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short";

        # Identity switching aliases
        whoami = "config --get-regexp ^user";
        work = "!git config user.email 'david.sanchez@e1an1in.com' && git config user.name 'David Sanchez'";
        personal = "!git config user.email 'sancheezpiiedra7@gmail.com' && git config user.name 'David Sánchez'";
      };

      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;
      core.editor = "vim";
      credential.helper = "osxkeychain";
      diff.colorMoved = "default";
      commit.gpgsign = false;
      tag.gpgsign = false;

      merge = {
        conflictstyle = "diff3";
      };

      rerere = {
        enabled = true;
      };
    };

    ignores = [
      ".DS_Store"
      "*.swp"
      "*.swo"
      "*~"
      ".idea/"
      ".vscode/"
      "*.log"
      "node_modules/"
      ".env"
      ".env.local"
    ];
  };

  programs.delta = {
    enable = true;
    enableGitIntegration = true;
    options = {
      navigate = true;
      light = false;
      side-by-side = true;
      line-numbers = true;
    };
  };
}
