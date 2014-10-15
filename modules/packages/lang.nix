{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # haskellPackages.ghc
    # haskellPackages.haskellPlatform
    # jdk
    # lua5
    # nodejs
    autoconf
    automake
    clang
    clangAnalyzer
    cmake
    colordiff
    ctags
    gcc
    gdb
    gnumake
    llvmPackages.clang
    python
    ruby
  ];
}
