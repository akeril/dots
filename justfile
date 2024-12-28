default:
  just -l

# NixOS Commands

# Rebuild NixOS
build:
  sudo nixos-rebuild switch --flake .

# Update flake file
update:
  nix flake update

# Format files
fmt:
  nix fmt
  stylua modules/

# Remove obselete nix links
clean:
  sudo nix-collect-garbage --delete-old
  sudo nix profile wipe-history --profile /nix/var/nix/profiles/system  --older-than 7d

# Symlink config directory for rapid iterations
hack:
  just reset
  ln -s ${PWD}/modules/{nvim,hypr,wezterm} ${HOME}/.config/

# Reset config directory to prepare for re-deployment
reset:
  rm -rf ${HOME}/.config/{hypr,nvim,wezterm}
