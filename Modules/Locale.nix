{ ... }:

{
  # Set your time zone.
  time.timeZone = "Europe/Brussels";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF8";
  i18n.supportedLocales = [ "en_GB.UTF-8/UTF-8" "nl_BE.UTF-8/UTF-8" ];
  
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "nl_BE.UTF-8";
    LC_CTYPE = "nl_BE.UTF-8";
    LC_COLLATE = "en_GB.UTF8";
    LC_IDENTIFICATION = "nl_BE.UTF-8";
    LC_MEASUREMENT = "nl_BE.UTF-8";
    LC_MESSAGES = "en_GB.UTF8";
    LC_MONETARY = "nl_BE.UTF-8";
    LC_NAME = "nl_BE.UTF-8";
    LC_NUMERIC = "nl_BE.UTF-8";
    LC_PAPER = "nl_BE.UTF-8";
    LC_TELEPHONE = "nl_BE.UTF-8";
    LC_TIME = "nl_BE.UTF-8";
  };

  # Configure keymaps
  console.keyMap = "uk";
  services.xserver.xkb.layout = "gb";
}