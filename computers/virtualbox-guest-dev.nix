{ config, pkgs, ... }:

{
  imports = [
    ../modules/boot.nix
    ./kaliningrad.nix
    ../users/sitano.nix
    ../modules/xserver.nix
  ];

  services.virtualbox.enable = true;

  nixpkgs.config.virtualbox.enableExtensionPack = true;
}
