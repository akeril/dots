{ pkgs, ... }:
{
  nix = {
    gc = {
      automatic = true;
      dates = "monthly";
    };
  };
}
