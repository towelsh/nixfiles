{ pkgs, ... }: {
  # starship prompt configuration
  home.file.".config/starship.toml".text = builtins.readFile ./starship.toml;
}