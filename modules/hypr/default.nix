{ pkgs, lib, config, ... }:
{
  home.packages = with pkgs; [
    hyprpaper
  ];

  xdg.configFile."hypr" = { source = ./.; };
}
