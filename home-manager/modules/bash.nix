{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
    '';
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake ~/nixConfigs";
      hms = "home-manager switch --flake ~/nixConfigs";
      rofi = "rofi -show drun";
    };
  };
}
