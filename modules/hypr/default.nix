{ pkgs, lib, config, ... }:
{
  xdg.configFile."hypr" = { source = ./.; force = true; };
}
