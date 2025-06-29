{ pkgs, lib, config, inputs, system, ... }:
{
  imports = [
    inputs.zen-browser.homeModules.twilight
  ];

  programs.zen-browser = {
    enable = true;
    policies = import ./policies.nix;
    profiles.default = {
      settings = import ./settings.nix;
      search = {
          engines = {
            "unduck" = {
              urls = [{
                template = "https://unduck.link?q={searchTerms}";
              }];
            };
          };
          default = "unduck";
          order = [ "unduck" ];
          force = true;
        };
    };
  };
}
