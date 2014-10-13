{ config, pkgs, ... }:

{
  imports = [
    ../modules/boot.nix
    ./kaliningrad.nix
    ../users/sitano.nix
    ../modules/networking.nix
    ../modules/xserver.nix
    <nixos/modules/programs/virtualbox.nix>
 ];

  hardware.cpu.intel.updateMicrocode = true;
  hardware.pulseaudio.enable = true;

  powerManagement.enable = false;

  services.openssh.enable = true;
  services.acpid.enable = true;
  services.printing.enable = true;
}
