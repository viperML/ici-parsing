{pkgs, ...}: {
  devShells.default = with pkgs;
    mkShell rec {
      env = buildEnv {
        name = "shell-env";
        paths = [
          jupyter
          julia-bin
        ];
      };

      packages = [env];

      shellHook = ''
        ln -Tsf ${env} .venv
      '';
    };
}
