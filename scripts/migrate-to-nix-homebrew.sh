#!/bin/bash -e

GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
NC='\033[0m'

echo "${YELLOW}╔════════════════════════════════════════════════════════════╗${NC}"
echo "${YELLOW}║  Migrating to nix-homebrew                                 ║${NC}"
echo "${YELLOW}╔════════════════════════════════════════════════════════════╗${NC}"
echo ""

echo "${YELLOW}Step 1: Backing up Homebrew bundle...${NC}"
brew bundle dump --file=/tmp/Brewfile.backup --force
echo "${GREEN}✓ Backup created at /tmp/Brewfile.backup${NC}"
echo ""

echo "${YELLOW}Step 2: Uninstalling current Homebrew...${NC}"
echo "${RED}This will remove all Homebrew packages and Homebrew itself.${NC}"
read -p "Continue? (y/N) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "${RED}Aborted.${NC}"
    exit 1
fi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)" -- --force

echo "${GREEN}✓ Homebrew uninstalled${NC}"
echo ""

echo "${YELLOW}Step 3: Cleaning up Homebrew directories...${NC}"
sudo rm -rf /opt/homebrew
sudo rm -rf ~/Library/Caches/Homebrew
echo "${GREEN}✓ Directories cleaned${NC}"
echo ""

echo "${YELLOW}Step 4: Enabling nix-homebrew in flake...${NC}"
cd ~/.config/nix
git diff flake.nix
echo ""
echo "${GREEN}✓ Ready to rebuild${NC}"
echo ""

echo "${YELLOW}Step 5: Rebuild with nix-homebrew enabled...${NC}"
echo "Run manually: ${GREEN}sudo darwin-rebuild switch --flake ~/.config/nix#aarch64-darwin${NC}"
echo ""
echo "${GREEN}Migration preparation complete!${NC}"
