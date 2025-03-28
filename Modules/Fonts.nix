{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
    corefonts
    vistafonts
    # nerd-fonts.meslo-lg # 25.05 pkg
    noto-fonts
    noto-fonts-emoji
  ];
}