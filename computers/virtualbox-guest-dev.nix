{ config, pkgs, ... }:

{
  imports = [
    ../modules/boot.nix
    ./kaliningrad.nix
    ../users/sitano.nix
    ../modules/xserver.nix
  ];

  # FIXME: UUID detection is currently broken
  boot.loader.grub.fsIdentifier = "provided";

  # Allow mounting of shared folders.
  users.extraUsers.sitano.extraGroups = [ "vboxsf" ];

  # Add some more video drivers to give X11 a shot at working in
  # VMware and QEMU.
  services.xserver.videoDrivers = mkOverride 40 [ "virtualbox" "vmware" "cirrus" "vesa" ];

  services.virtualbox.enable = true;

  nixpkgs.config.virtualbox.enableExtensionPack = true;
}
