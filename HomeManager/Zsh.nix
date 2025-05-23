{ config, ... }:

{
  programs = {
    zsh = {
      enable = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      initContent = "fastfetch";
      shellAliases = {
        update = "sudo nixos-rebuild switch -L --refresh --flake github:Boxingflame/nixos";
        updateb = "sudo nixos-rebuild boot -L --refresh --flake github:Boxingflame/nixos";
      };
      oh-my-zsh = {
        enable = true;
        theme = "gallois";
        plugins = [
          "git"
          "history"
        ];
      };
    };
  };

  home.file.fastfetch_config = {
    target = "${config.home.homeDirectory}/.config/fastfetch/config.jsonc";
    source = ../Configurations/FastFetch.jsonc;
  };
}