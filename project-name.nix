let
  pkgs = import <nixpkgs> {};
  drvt = import ./nix/derivation.nix pkgs;
in drvt {
  name = "circleci-101";
}
