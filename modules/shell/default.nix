{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    bat
    bottom
    brightnessctl
    choose
    du-dust
    eva
    eza
    fd
    fish
    fzf
    hyperfine
    jq
    just
    pamixer
    procs
    ripgrep
    rsync
    sd
    skim
    socat
    starship
    tealdeer
    tokei
    unzip
    watchexec
    xdg-utils
    zip
    zoxide
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    VISUAL = "nvim";
  };

  xdg.userDirs = {
    enable = true;
    desktop = "${config.home.homeDirectory}";
    download = "${config.home.homeDirectory}/downloads";
  };

  programs = {
    fish.enable = true;
    direnv = {
      enable = true;
      config = {
        hide_env_diff = true;
      };
      nix-direnv.enable = true;
    };
    starship.enable = true;
    zoxide.enable = true;
    man.generateCaches = false;
  };

  home.file.".config/fish/conf.d" = {
    source = ./config;
  };

  home.file.".local/bin" = {
    source = ./scripts;
  };
}
