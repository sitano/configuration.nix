{ config, pkgs, ... }:

# $ fdisk /dev/sda # (or whatever device you want to install on)
# $ mkfs.ext4 -L nixos /dev/sda1
# $ mkswap -L swap /dev/sda2
# $ swapon /dev/sda2
# $ mount /dev/disk/by-label/nixos /mnt
# $ nixos-generate-config --root /mnt
# $ nano /mnt/etc/nixos/configuration.nix
# $ nixos-install
# $ reboot

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
