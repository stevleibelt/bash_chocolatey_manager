#!/bin/bash
####
# @since 2020-02-19
# @author stev leibelt <artodeto@bazzline.net>
####

echo ":: Exporting current installed packages to file >>local_packages.config<<."
powershell -ExecutionPolicy Bypass -File export_currently_installed_packages.ps1 > local_packages.config
