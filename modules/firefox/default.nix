{ pkgs, lib, config, ... }:
{
  programs.firefox = {
    enable = true;
    policies = import ./policies.nix;
    profiles.default = {
      search = {
        default = "DuckDuckGo";
        order = [ "DuckDuckGo" ];
        force = true;
      };
    };
  };
}
