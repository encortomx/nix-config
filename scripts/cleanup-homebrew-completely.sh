#!/bin/bash -e

GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
NC='\033[0m'

echo "${RED}WARNING: This will remove ALL Homebrew installations${NC}"
echo "${YELLOW}Including /opt/homebrew and /usr/local/Homebrew${NC}"
echo ""
read -p "Continue? (y/N) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "${RED}Aborted.${NC}"
    exit 1
fi

echo "${YELLOW}Removing /usr/local/Homebrew...${NC}"
sudo rm -rf /usr/local/Homebrew
sudo rm -rf /usr/local/Caskroom
sudo rm -rf /usr/local/Cellar
sudo rm -rf /usr/local/Frameworks

echo "${YELLOW}Removing /opt/homebrew...${NC}"
sudo rm -rf /opt/homebrew

echo "${YELLOW}Cleaning caches...${NC}"
rm -rf ~/Library/Caches/Homebrew
rm -rf ~/Library/Logs/Homebrew

echo "${GREEN}✓ All Homebrew installations removed${NC}"
echo ""
echo "Now run: ${GREEN}sudo darwin-rebuild switch --flake ~/.config/nix#aarch64-darwin${NC}"
