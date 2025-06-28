{ config, pkgs, ... }:

{
  users.defaultUserShell = pkgs.zsh;
  environment.shells = with pkgs; [ zsh ];
  programs = {
    zsh = {
      enable = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      initContent = "fastfetch";
      shellAliases = {
        update = "sudo nixos-rebuild switch -L --refresh --flake github:destr0der/nixos";
        updateb = "sudo nixos-rebuild boot -L --refresh --flake github:destr0der/nixos";
      };
      ohMyZsh = {
        enable = true;
        theme = "gallois";
        plugins = [
          "git"
          "history"
        ];
      };
    };
  };
}