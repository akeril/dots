default:
  just -l

# NixOS Commands

# Rebuild NixOS
build:
  just reset
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
  ln -s ${PWD}/modules/alacritty ${HOME}/.config/alacritty
  ln -s ${PWD}/modules/hypr ${HOME}/.config/hypr
  ln -s ${PWD}/modules/nvim ${HOME}/.config/nvim
  ln -s ${PWD}/modules/tmux ${HOME}/.config/tmux
  ln -s ${PWD}/modules/shell/config ${HOME}/.config/fish/conf.d
  ln -s ${PWD}/modules/shell/scripts ${HOME}/.local/bin

# Reset config directory to prepare for re-deployment
reset:
  rm -rf ${HOME}/.local/bin
  rm -rf ${HOME}/.config/fish/conf.d
  rm -rf ${HOME}/.config/{alacritty,dunst,eww,hypr,nvim,tmux}
