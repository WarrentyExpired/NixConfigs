{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };
  
  environment.systemPackages = with pkgs; [
    git
    gh
    wget
    ripgrep
    tree
    unzip
    fastfetch
    home-manager
    acpi
    pulseaudio
    htop
    tmux
    fastfetch
    solaar
    logitech-udev-rules
    upower
    xorg.xev
    sysstat
    i3
    i3status
    #i3lock
    #i3lock-fancy
    i3blocks
    rofi
    picom
    feh
    stalonetray
    kitty
    networkmanagerapplet
    firefox
    xdotool
    xorg.xmodmap
    xonsh
    autorandr
    arandr
    python3
    pipx
    python312Packages.cli-helpers
    python312Packages.netifaces
    python312Packages.pip
    eza
    helix
    ];

  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
    thunar-media-tags-plugin
    ];

  programs.zsh.enable = true;

  fonts.packages = with pkgs; [
  # JetBrains-mono 
  noto-fonts
  noto-fonts-emoji
  cascadia-code
  # TwEmoji-color-font
  font-awesome
  powerline-fonts
  powerline-symbols
  ];
  }

