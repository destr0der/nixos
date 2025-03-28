{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
    corefonts
    vistafonts
    nerd-fonts.meslo-lg
    noto-fonts
    noto-fonts-emoji
  ];
}