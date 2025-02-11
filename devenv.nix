{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [ pkgs.git pkgs.gprbuild pkgs.gnat ];

  # https://devenv.sh/languages/
  languages.c.enable = true;
  # languages.ada.enable = true;

  # https://devenv.sh/processes/
  # processes.cargo-watch.exec = "cargo-watch";

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  # https://devenv.sh/scripts/
  # scripts.hello.exec = ''
  #   echo hello from $GREET
  # '';

  scripts.words.exec = ''
    ./bin/words "$@";
  '';

  enterShell = ''
    git --version
  '';

  # https://devenv.sh/tasks/
  tasks = {
    "words:install".exec = "make";
    "devenv:enterShell".after = [ "words:install" ];
  };

  # https://devenv.sh/tests/
  enterTest = ''
    echo "Running tests"
    git --version | grep --color=auto "${pkgs.git.version}"
  '';

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
