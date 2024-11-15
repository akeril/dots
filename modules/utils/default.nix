{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gcc
    gnumake

    keepassxc
    zathura
  ];
}
