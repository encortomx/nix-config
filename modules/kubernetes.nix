{ pkgs, ... }:

{
  home.packages = with pkgs; [
    kubectl
    kubernetes-helm
    kubectx
    k9s
    stern
    kustomize
  ];

  programs.zsh.shellAliases = {
    k = "kubectl";
    kctx = "kubectx";
    kns = "kubens";
  };

  home.file.".kube/.keep".text = "";
}
