
with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "circleci-101";
  src = ./.;
  buildInputs = [ 
    git
    nodejs
  ];
  buildPhase = ''
    npm run build
  '';
  installPhase = ''
    mkdir $out
    cp dist/* $out/
  '';
}
