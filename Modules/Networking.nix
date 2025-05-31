{ ... }:

{
  networking = {
    networkmanager = {
      enable = true;
      enableStrongSwan = true;
    };
    firewall = {
      enable = true;
      allowedTCPPorts = [
        6969
        25565
      ];
      allowedUDPPorts = [25565];
    };
  };
}