{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    emacs24
    vimHugeX
  ];
}
