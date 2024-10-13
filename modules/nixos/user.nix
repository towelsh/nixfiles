{ pkgs, ... }: {
  users = {
    defaultUserShell = pkgs.nushell;
    users.joel = {
      isNormalUser = true;
      description = "joel";
      extraGroups = [ "networkmanager" "wheel" "docker" ];
    };
  };
}