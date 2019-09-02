pkgs: attrs:
  with pkgs;
  let defaultAttrs = {
    name = "";
    builder = "${node}/bin/npm";
    args = [ "run" "build" ];
    buildInputs = [
      git
      nodejs-10_x
    ];
    system = builtins.currentSystem;
  };
  in
  derivation (defaultAttrs // attrs)
