{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    layout = "colemak/en-latin9,ru";
    xkbOptions = "grp:alt_shift_toggle,grp_led:scroll";

    videoDrivers = [ "nouveau" ];

    synaptics = {
      enable = true;
      twoFingerScroll = true;
    };

    displayManager.slim.enable = true;

    desktopManager.xterm.enable = false;

    windowManager = {
      default = "i3";

      xmonad = {
        enable = true;
        enableContribAndExtras = true;
      };

      i3 = {
        enable = true;
      };
    };
  };

  nixpkgs.config = {
    allowUnfree = true;

    chromium = {
      enableGoogleTalkPlugin = true;
      enablePepperFlash = true;
      enablePepperPdf = true;
    };
  };

  environment.systemPackages = with pkgs; [
    chromiumBeta
    libreoffice
    mpv
    rxvt_unicode
    transmission
    xclip
    zathura
  ];

  fonts.fonts = [ pkgs.terminus_font ];
}
