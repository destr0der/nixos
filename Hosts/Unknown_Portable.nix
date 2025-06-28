{ config, ... }:

{
  imports = [
    ../Modules
    ../Modules/Intel.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = "Unknown_Portable";

  # File System
  fileSystems = {
    "/" = {
      label = "NIXOS-ROOT";
      fsType = "ext4";
    };
    "/boot" = {
      label = "NIXOS-BOOT";
      fsType = "vfat";
      options = [ "umask=0077" ];
    };
  };

  swapDevices = [ { label = "NIXOS-SWAP"; } ];
  
  # Devices Specific
  hardware.bluetooth.enable = true;
  
  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?
}
