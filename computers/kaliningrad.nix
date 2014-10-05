{ config, pkgs, ... }:

{
  imports =
    [ ../modules/boot.nix
      ../modules/fonts.nix
      ../modules/i18n.nix
      ../modules/packages.nix
      ../users/sitano.nix
    ];

  nix.gc.automatic = true;

  time.timeZone = "Europe/Kaliningrad";

  users.mutableUsers = true;
  users.defaultUserShell = "/run/current-system/sw/bin/zsh";

  programs.zsh.enable = true;

  services.redshift = {
    enable = true;
    latitude = "51";
    longitude = "-2";
  };
}
