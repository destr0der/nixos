{ config, ... }:

{
  imports = [
    ./Modules
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = "Levi-NixOS";

  # Add Windows 10 to boot list
  boot.loader.systemd-boot.windows = {
    win10 = {
      title = "Windows 10";
      sortKey = "o_windows10";
      efiDeviceHandle = "FS3";
    };
  };

  # File System
  fileSystem = {
    "/" = {
      device = "/dev/disk/by-uuid/a90164ad-fee0-42f9-bbaa-924b14d5a17a";
      fsType = "ext4";
    };
    "boot" = {
      device = "/dev/disk/by-uuid/BC49-5FE8";
      fsType = "vfat";
      options = [ "umask=0077" "dmas=0077" ];
    };
  };
  
  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?
}
