{ ... }:

{
  services.desktopManager = {
    plasma6.enable = true;
    autoLogin = {
      enable = true;
      user = ["callum"];
    };
    sddm = {
      enable = true;
      wayland.enable = true;
    };
  };
}