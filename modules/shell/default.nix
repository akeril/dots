{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    bottom
    brightnessctl
    choose
    du-dust
    eva
    eza
    fd
    fish
    fzf
    jq
    just
    pamixer
    ripgrep
    rsync
    sd
    socat
    starship
    tealdeer
    tokei
    unzip
    watchexec
    xdg-utils
    zip
    zoxide

    keepassxc
    obs-studio
    zathura

    gcc
    gnumake
  ];

  xdg.userDirs = {
    enable = true;
    desktop = "${config.home.homeDirectory}";
    download = "${config.home.homeDirectory}";
    documents = "${config.home.homeDirectory}";
  };

  programs = {
    fish.enable = true;
    starship.enable = true;
    zoxide.enable = true;
    man.generateCaches = false;
  };

  home.file.".config/fish/conf.d/config.fish" = {
    source = ./config.fish; force = true;
  };
}
