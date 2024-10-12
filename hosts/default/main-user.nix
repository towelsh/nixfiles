{ lib, config, pkgs, ... }:

let
  cfg = config.main-user;
in
{
  options.main-user = {
    enable
      = lib.mkEnableOption "enable user module";
    userName = lib.mkOption {
      default = "mainuser";
      description = ''
        username
      '';
    };
  };

  config = {
    users.users.${cfg.userName} = {
      isNormalUser = true;
      description = "primary user";
      shell = pkgs.nushell;
      extraGroups = [ "networkmanager" "wheel" "docker" ];
    };

    home-manager = {
      # also pass inputs to home-manager modules
      extraSpecialArgs = { inherit inputs; };
      users = {
        ${cfg.userName} = import ./home.nix;
      };
    };
  };
}