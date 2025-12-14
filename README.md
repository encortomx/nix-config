# macOS Nix Configuration

Declarative macOS system configuration using Nix, nix-darwin, and home-manager.

## Installation

### 1. Install Nix

```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

### 2. Clone and Apply

```bash
git clone <your-repo-url> ~/.config/nix
cd ~/.config/nix

# Update hostname in flake.nix to match your Mac
# Update git config in home/programs/git.nix

nix run nix-darwin -- switch --flake ~/.config/nix
```

### 3. Update .zshrc

Add to your `~/.zshrc`:

```bash
[ -f "$HOME/.zshrc.nix" ] && source "$HOME/.zshrc.nix"
```

## Usage

```bash
# Apply changes
darwin-rebuild switch --flake ~/.config/nix

# Update packages
cd ~/.config/nix && nix flake update && darwin-rebuild switch --flake .

# Rollback
darwin-rebuild --rollback

# Clean old generations
nix-collect-garbage -d && sudo nix-collect-garbage -d
```

## Structure

- `flake.nix` - Entry point
- `darwin/` - System configuration and Homebrew casks
- `home/` - User packages and programs
- `modules/` - Specialized configurations
