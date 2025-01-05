{ config, pkgs, ... }:

{
  imports = [
    ./modules/all.nix
  ];

  home.username = "warrentyexpired";
  home.homeDirectory = "/home/warrentyexpired";
  home.stateVersion = "24.11";
}
