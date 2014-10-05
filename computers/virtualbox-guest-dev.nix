{ config, pkgs, ... }:

{
  imports = [
    kaliningrad.nix
    ../modules/xserver.nix
  ];

  services.virtualbox.enable = true;

  nixpkgs.config.virtualbox.enableExtensionPack = true;
}
