{ pkgs, lib, config, ... }:
{
  home.packages = with pkgs; [
    alacritty
    noto-fonts
    source-code-pro
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];

  xdg.configFile."alacritty" = { source = ./.; };
}
