{ ... }:
{
  system.stateVersion = "23.11";

  # Host specific configuration
  networking.hostName = "lyra";
  time.timeZone = "Asia/Kolkata";

  # User configuration
  users.users."home" = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "audio" "wheel" "docker" "libvirtd" ];
    initialPassword = "password";
  };

  imports = [
    ./audio.nix
    ./bluetooth.nix
    ./boot.nix
    ./disko.nix
    ./docker.nix
    ./env.nix
    ./hardware-configuration.nix
    ./hyprland.nix
    ./network.nix
    ./nix.nix
    ./shell.nix
    ./utils.nix
    ./virt.nix
  ];
}
