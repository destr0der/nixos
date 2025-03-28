{ ... }:

{
  services.desktopManager = {
    plasma6.enable = true;
    autologin = {
      enable = true;
      user = ["callum"];
    };
    sddm = {
      enable = true;
      wayland.enable = true;
    };
  };
}