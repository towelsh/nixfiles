{ pkgs, ... }: {
  users = {
    defaultUserShell = pkgs.nushell;
    users.joel = {
      isNormalUser = true;
      description = "primary user";
      extraGroups = [ "networkmanager" "wheel" "docker" ];
    }
  }
}