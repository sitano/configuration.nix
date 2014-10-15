{ config, pkgs, ... }:

{
  users.defaultUserShell = "/run/current-system/sw/bin/zsh";

  programs.zsh.enable = true;

  environment = {
    shellInit = ''
      export PAGER="most -s"

      export ALTERNATE_EDITOR=vim EDITOR=vim VISUAL=vim

      export PATH="/opt/vagrant/bin:$PATH"
      export PATH="/opt/packer:$PATH"

      export DEBFULLNAME="Ivan Prisyazhniy"
      export DEBEMAIL="john.koepi@gmail.com"
      export GPG="john.koepi@gmail.com"
    '';

    systemPackages = with pkgs; [
      most

      redshift

      nix-repl

      fish
      zsh
    ];
  };

  services.redshift = {
    enable = true;
    latitude = "51";
    longitude = "-2";
  };
}
