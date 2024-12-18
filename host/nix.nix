{ pkgs, ... }:
{
  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      use-xdg-base-directories = true;
    };
    gc = {
      automatic = true;
      dates = "monthly";
    };
  };
}
