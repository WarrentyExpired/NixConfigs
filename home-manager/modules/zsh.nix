{ pkgs, config, lib, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake ~/nixConfigs";
      hms = "home-manager switch --flake ~/nixConfigs";
    };

    history.size = 10000;
    history.ignoreAllDups = true;
    history.path = "$HOME/.zsh_history";
    history.ignorePatterns = ["rm *" "pkill" "cp *"];
  };

  programs.zsh.oh-my-zsh = {
    enable = true;
    plugins = [ "git" ];
    theme = "bira";
  };
}
