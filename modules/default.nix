{ pkgs, home-manager, inputs, ... }:
{
  home-manager.extraSpecialArgs = { inherit inputs; system = "x86_64-linux"; };
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.users."home" = {
    home = {
      stateVersion = "24.11";
      username = "home";
      homeDirectory = "/home/home";
    };
    programs.home-manager.enable = true;
    imports = [
      ./git
      ./hypr
      ./nvim
      ./shell
      ./wezterm
      ./zen
    ];
  };
}
