{ pkgs, lib, config, ... }:
{
  home.packages = with pkgs; [
    git
  ];

  programs = {
    git = {
      enable = true;
      userEmail = "185402721+akeril@users.noreply.github.com";
      userName = "akeril";
      extraConfig = {
        init.defaultBranch = "main";
      };
    };
  };
}
