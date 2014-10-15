{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bazaar
    bazaarTools
    git
    gitAndTools.gitFull
    gitAndTools.svn2git
    gitAndTools.tig
    mercurial
    subversion
  ];
}
