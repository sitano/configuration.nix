{ config, pkgs, ... }:

{
  fonts = {
    enableFontDir = true;
    enableGhostscriptFonts = true;

    fonts = with pkgs; [
      inconsolata
      terminus_font
    # source-code-pro
      dosemu_fonts
     ];
  };
}
