with (import <nixpkgs> {});
let
  env = bundlerEnv {
    name = "site-bundler-env";
    ruby = ruby_2_5;
    gemdir  = ./.;
  };
in mkShell {
  buildInputs = [ env env.wrappedRuby ];
}
