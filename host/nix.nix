{ pkgs, ... }:
{
  nix = {
    gc = {
      automatic = true;
      dates = "monthly";
    };
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      use-xdg-base-directories = true;
      substituters = [ "https://hyprland.cachix.org" ];
      trusted-public-keys = [ "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc=" ];
    };
  };

  nixpkgs.config = {
    allowUnfree = true;
  };
}
