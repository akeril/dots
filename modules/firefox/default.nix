{ pkgs, lib, config, ... }:
{
  programs.firefox = {
    enable = true;
    policies = import ./policies.nix;
    profiles.default = {
      settings = import ./settings.nix;
      search = {
        default = "DuckDuckGo";
        order = [ "DuckDuckGo" ];
        force = true;
      };
    };
  };
}
