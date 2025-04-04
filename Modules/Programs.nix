{ pkgs, ... }:

{
  programs = {
    firefox.enable = true;
    steam.enable = true;

    nix-ld = {
      enable = true;
      libraries = with pkgs; [ 
        icu
        gcc_multi
        fontconfig
        vulkan-headers
        vulkan-loader
      ] ++ (
      with xorg; [
        libICE
        libSM
        libX11
      ]);
    };
  };
}