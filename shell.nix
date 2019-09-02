# with (import <nixpkgs> {});
# derivation {
#   name = "hello";
#   builder = "${bash}/bin/bash";
#   args = [ ./builder.sh ];
#   buildInputs = [ 
#     git
#     nodejs-10_x
#   ];
#   system = builtins.currentSystem;
# }

with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "circleci-101";
  buildInputs = [
    git
    nodejs-10_x
  ];
  system = builtins.currentSystem;
}
