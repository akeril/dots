{ pkgs, home-manager, inputs, ... }:
{
  home-manager.extraSpecialArgs = { inherit inputs; };
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.users."home" = {
    home = {
      stateVersion = "23.11";
      username = "home";
      homeDirectory = "/home/home";
    };

    programs.home-manager.enable = true;
    imports = [
      ./firefox
      ./git
      ./hypr
      ./nvim
      ./shell
      ./wezterm
    ];
  };
}
