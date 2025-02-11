{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [
    pkgs.git pkgs.gnumake pkgs.gprbuild pkgs.bash pkgs.gnat
  ] ++ lib.optionals (!config.container.isBuilding) [ ];

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
     cd "$DEVENV_ROOT";
    ./bin/words "$@";
  '';

  enterShell = ''
    mkdir -p ~/.local/bin

    cat <<EOF > ~/.local/bin/whitakers-words
    #!/usr/bin/env sh
    cd $DEVENV_ROOT
    exec ./bin/words "\$@"
    EOF

    chmod +x ~/.local/bin/whitakers-words
  '';

  # https://devenv.sh/tasks/
  tasks = {
    "words:install".exec = "devenv shell make";
    # "devenv:enterShell".after = [ "words:install" ];
  };

  # https://devenv.sh/tests/
  # enterTest = ''
  #   echo "Running tests"
  #   git --version | grep --color=auto "${pkgs.git.version}"
  # '';

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
  # outputs = {
  #   myproject.myapp = import ./myapp { inherit pkgs; };
  #   # git = pkgs.git;
  # };

  # processes.ww.exec = "/bin/words";

  # containers."ww".name = "whitakers-words";
  # containers."ww".startupCommand = config.processes.ww.exec;
}
