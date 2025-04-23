{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vulkan-tools
    lact
    glxinfo
    fastfetch
    git
    wget
    pciutils
    btop
    vlc
    vesktop
    prism-overlayed
    lutris-overlayed
    packwiz
    zulu

    #sort later
    kdePackages.qtmultimedia
  ];
}