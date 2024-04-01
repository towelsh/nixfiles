with import <nixpkgs> {};

writeShellScriptBin "rebuild" builtins.readFile ../../scripts/rebuild
