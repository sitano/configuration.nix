{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    aspell
    aspellDicts.en
    aspellDicts.ru
    cmake
    ctags
    fish
    gcc
    git
    mercurial
    # svn
    gnumake
    ledger
    nix-repl
    python
    vifm
    vimHugeX
    wget
    xlibs.xmessage
    zsh
  ];
}
