{ ... }:

{
  users.users = {
    Des = {
      isNormalUser = true;
      extraGroups = [ "networkmanager" "wheel" ];
    };
  };
}