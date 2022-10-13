{ pkgs ? import <nixpkgs> {} }:
with pkgs;
let
  env = bundlerEnv {
    name = "site-bundler-env";
    ruby = ruby_2_7;
    gemdir  = ./.;
  };
in mkShell {
  buildInputs = [ env env.wrappedRuby ];
}
