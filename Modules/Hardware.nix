{ ... }:

{
  hardware = {
    enableAllFirmware = true;
    xone.enable = true;
    xpadneo.enable = true;
    graphics = {
      enable = true;
      enable32Bit = true;
    };
    bluetooth = {
        settings.General.Experimental = true;
    };
  };
}