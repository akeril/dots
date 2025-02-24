{ pkgs, ... }:
{

  imports = [
    ./disko.nix
    ./hardware-configuration.nix
  ];

  system.stateVersion = "24.11";

  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  environment = {
    defaultPackages = [ ];
    sessionVariables = rec {
      XDG_CACHE_HOME = "$HOME/.cache";
      XDG_CONFIG_HOME = "$HOME/.config";
      XDG_DATA_HOME = "$HOME/.local/share";
      XDG_STATE_HOME = "$HOME/.local/state";
      XDG_BIN_HOME = "$HOME/.local/bin";
      PATH = [ "${XDG_BIN_HOME}" ];
    };
  };

  networking.networkmanager.enable = true;

  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      use-xdg-base-directories = true;
    };
    gc = {
      automatic = true;
      dates = "monthly";
    };
  };

  security.rtkit.enable = true;
  services = {
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };

  networking.hostName = "lyra";
  time.timeZone = "Asia/Kolkata";

  users.users."home" = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "audio" "wheel" "docker" "libvirtd" ];
    initialPassword = "password";
  };

  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  programs = {
    hyprland.enable = true;
    nano.enable = false;
    fish.enable = true;
  };

  users.defaultUserShell = pkgs.fish;

  services.openssh.enable = true;
}
