#!/bin/bash
####
# @since 2020-02-19
# @author stev leibelt <artodeto@bazzline.net>
####

if [[ ! -x $(command -v choco) ]];
then
    echo ":: Installing chocolatey."
    powershell -ExecutionPolicy Bypass -File install_chocolatey.ps1 
fi

if [[ -f local_packages.config ]];
then
    echo ":: Restoring installed packages."
    powershell -ExecutionPolicy Bypass -File install_packages.ps1 
else
    echo ":: File >>local_packages.config<< is missing."
fi
