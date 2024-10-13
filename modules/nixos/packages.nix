{ pkgs, ... }:
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # custom
    (writeShellScriptBin "rebuild" (builtins.readFile ../../scripts/rebuild))

    # stuff you probably don't want
    davinci-resolve
    prismlauncher

    firefox
    thunderbird
    vivaldi
    tor-browser
    termius
    (discord.override {
      withVencord = true;
    })
    # vesktop
    spotify
    spicetify-cli
    ticktick
    vscode
    gimp
    gparted
    btop
    exfatprogs

    # hardware control
    piper
    libratbag
    streamdeck-ui

    # gpu
    glxinfo
    pciutils

    # games
    steam
    grapejuice

    # terminal utils
    #alacritty
    blackbox-terminal
    neofetch
    pfetch-rs
    kitty
    nushell
    starship
    neovim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
    gh
    lazygit
    ncdu
    appimage-run

    # devtools
    rustup
    gcc
    python3
    python311Packages.pip
    jdk8
    jdk22
    jdk
    nodejs_21
    bun
    nil

    # desktop env
    gnome.gnome-tweaks
    gnome-extension-manager
    gnome.dconf-editor

    # gnome extensions
    gnomeExtensions.just-perfection
    gnomeExtensions.dash-to-dock
    gnomeExtensions.spotify-tray
    gnomeExtensions.tray-icons-reloaded
    gnomeExtensions.rounded-corners
    gnomeExtensions.user-themes
    gnomeExtensions.blur-my-shell
    gnomeExtensions.caffeine
  ];
}