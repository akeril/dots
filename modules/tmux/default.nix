{ pkgs, inputs, ... }:
{
  home.packages = with pkgs; [
    tmux
    acpi
  ];

  xdg.configFile."tmux" = { source = ./.; };
}
