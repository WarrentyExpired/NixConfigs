{ config, pkgs, ... }:

{
  home.file.".config/helix/config.toml".text = builtins.readFile ./dotfiles/helix.toml;
}

