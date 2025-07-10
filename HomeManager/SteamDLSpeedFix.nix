{ config, ...}:

{
  home.file.steam_downloadfix = {
   target = "${config.home.homeDirectory}/.local/share/steam/steam_dev.cfg";
   source = ../Configurations/SteamDLSpeedFix.cfg;
  };
}