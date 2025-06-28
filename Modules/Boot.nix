{ config, pkgs, modulesPath, ... }:

{
  imports = [ 
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  boot = {
    plymouth.enable = true;
    kernelPackages = pkgs.linuxPackages_latest;
    kernelParams = ["quiet"];
    loader = {
      systemd-boot = {
        enable = true;
        editor = false;
      };
      efi.canTouchEfiVariables = true;
      timeout = 0;
    };
    initrd = {
      availableKernelModules = [ 
        "nvme"
        "xhci_pci"
        "ahci"
        "usbhid"
        "usb_storage"
        "sd_mod"
      ];
    };
  };
}
