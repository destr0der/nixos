{ ... }:

{
  users.users = {
    callum = {
      isNormalUser = true;
      extraGroups = [ "networkmanager" "wheel" ];
    };
  };
}