{ config, pkgs, ... }:

{
  imports =
    [ ../modules/nobeep.nix
      ../modules/fonts.nix
      ../modules/i18n.nix
      ../modules/shell.nix
      ../modules/packages.nix
    ];

  nix.gc.automatic = true;

  time.timeZone = "Europe/Kaliningrad";

  users.mutableUsers = true;
}
