{ config, pkgs, ... }:

{
  users.extraUsers.sitano = {
    group = "sitano";
    extraGroups = [ "users" "virtualbox" "wheel" ];
    uid = 1000;
    createHome = true;
    home = "/home/sitano";
    useDefaultShell = shell;
    shell = "/run/current-system/sw/bin/zsh";
    openssh.authorizedKeys.keys = [ "ssh-rsa AAA john.koepi@gmail.com" ];
  };

  users.extraGroups.sitano.gid = 1000;
}
