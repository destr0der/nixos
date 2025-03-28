{ ... }:

{
  networking = {
    networkmanager.enable = true;
    firewall = {
      enable = false;
      allowedTCPPorts = [6969];
      allowedUDPPorts = [25565];
    };
  };
}