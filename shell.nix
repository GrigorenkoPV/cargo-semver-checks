{
  pkgs ? import <nixpkgs> { },
}:
pkgs.mkShell {
  preferLocalBuild = true;
  allowSubstitutes = false;

  name = "cargo-semver-checls";

  packages = with pkgs; [
    cargo-insta
  ];
}
