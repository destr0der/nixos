{ ... }:

{
  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than 3d";
  };

  nixpkgs.config.allowUnfree = true;
}