{ pkgs, lib, config, ... }:
{
  home.packages = with pkgs; [
    wezterm
    nerd-fonts.jetbrains-mono
  ];

  xdg.configFile."wezterm" = { source = ./.; force = true; };
}
