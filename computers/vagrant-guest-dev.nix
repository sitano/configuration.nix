{ config, pkgs, ... }:

{
  imports = [
    /etc/nixos/configuration.nix
    /vagrant/computers/kaliningrad.nix
  ];
}
