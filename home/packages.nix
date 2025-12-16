{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # DevOps & Cloud
    kubectl
    kubernetes-helm
    terraform
    kubectx
    k9s
    stern
    kustomize

    # CLI Utilities
    git
    curl
    wget
    jq
    yq
    ripgrep
    fd
    bat
    eza
    zoxide
    fzf
    tree
    htop
    btop
    starship

    # Development Languages - Go
    go
    gopls
    gotools
    golangci-lint
    delve

    # Node.js ecosystem
    nodejs_22
    bun
    yarn

    # Python
    python312
    python312Packages.pip
    python312Packages.virtualenv
    poetry

    # Rust
    rustc
    cargo
    rust-analyzer
    rustfmt
    clippy

    # Java
    jdk21
    maven
    gradle

    # Container Tools
    podman
    podman-compose
    docker-compose

    # Build Tools
    gnumake
    cmake
    pkg-config
    autoconf
    automake

    # Cloud CLIs
    google-cloud-sdk
    awscli2

    # Database Clients
    postgresql_16
    libpq
    mysql80

    # Version Control
    gh
    git-lfs
    lazygit

    # GPG & Security
    gnupg
    pinentry_mac

    # Text Processing
    gnused
    gawk
    gnugrep

    # Compression
    unzip
    zip
    gzip
    bzip2
    xz

    # Network Tools
    netcat
    nmap

    # Modern CLI Tools
    tldr
    navi
    diff-so-fancy
  ];
}
