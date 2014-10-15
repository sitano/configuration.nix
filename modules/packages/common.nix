{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    acpitool
    aspell
    aspellDicts.en
    aspellDicts.ru
    cpufrequtils
    curl
    file
    gnupg
    gnupg1
    gperf
    graphviz
    hdparm
    htop
    io
    links2
    lsof
    lynx
    man
    netcat
    nmap
    p7zip
    parted
    screen
    sdparm
    sysstat
    tcpdump
    telnet
    units
    unrar
    unzip
    vifm
    wget
  ];
}
