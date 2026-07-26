{
  description = "A collection of reproducible Nix Flake development shells";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells = {
          default = pkgs.mkShell {
            buildInputs = with pkgs; [
              nixfmt-rfc-style
              nil
              git
              gh
            ];
            shellHook = ''
              echo "❄️ Welcome to Lixingyunn Nix DevShell Templates!"
            '';
          };

          python = pkgs.mkShell {
            buildInputs = with pkgs; [
              python3
              python3Packages.pip
              python3Packages.virtualenv
              ruff
              black
            ];
          };

          rust = pkgs.mkShell {
            buildInputs = with pkgs; [
              rustc
              cargo
              rustfmt
              clippy
              rust-analyzer
            ];
          };

          kotlin = pkgs.mkShell {
            buildInputs = with pkgs; [
              jdk17
              kotlin
              gradle
              ktlint
            ];
          };

          go = pkgs.mkShell {
            buildInputs = with pkgs; [
              go
              gopls
              golangci-lint
            ];
          };

          flutter = pkgs.mkShell {
            buildInputs = with pkgs; [
              flutter
              dart
              android-tools
            ];
          };
        };
      }) // {
        templates = {
          python = {
            path = ./templates/python;
            description = "Python 3 development shell with ruff and virtualenv";
          };
          rust = {
            path = ./templates/rust;
            description = "Rust toolchain devShell with cargo and rust-analyzer";
          };
          kotlin = {
            path = ./templates/kotlin;
            description = "Kotlin / JVM devShell with Gradle and Ktlint";
          };
          go = {
            path = ./templates/go;
            description = "Go development shell with gopls and linter";
          };
        };
      };
}
