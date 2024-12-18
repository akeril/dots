{ pkgs, lib, config, ... }:
{
  home.packages = with pkgs; [
    alacritty
    noto-fonts
    source-code-pro
    nerd-fonts.fira-code
  ];

  xdg.configFile."alacritty" = { source = ./.; };
}
