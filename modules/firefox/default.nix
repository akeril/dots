{ pkgs, lib, config, inputs, system, ... }:
{
  home.packages = with pkgs; [
    inputs.zen-browser.packages.${system}.twilight
  ];

  # programs.zen = {
  #   enable = true;
  #   policies = import ./policies.nix;
  #   profiles.default = {
  #     settings = import ./settings.nix;
  #     search = {
  #       engines = {
  #         "unduck" = {
  #           urls = [{
  #             template = "https://unduck.link?q={searchTerms}";
  #           }];
  #         };
  #       };
  #       default = "unduck";
  #       order = [ "unduck" ];
  #       force = true;
  #     };
  #   };
  # };
}
