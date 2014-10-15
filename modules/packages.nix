{ config, pkgs, ... }:

{
  imports = [
    ./packages/common.nix
    ./packages/editor.nix
    ./packages/lang.nix
    ./packages/vcs.nix
  ];
}
