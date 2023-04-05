{pkgs, ...}: {
  devShells.default = with pkgs;
    mkShell {
      packages = [
        poetry
      ];
      # LD_LIBRARY_PATH = lib.makeLibraryPath [
      #   stdenv.cc.cc
      # ];
    };
}
