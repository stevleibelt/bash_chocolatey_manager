#!/usr/bin/env pwsh
####
# Installs chocolatey by downloading a install.ps1 file and executing it.
#
# @see: https://chocolatey.org/install
####
# @since 2020-02-19
# @author stev leibelt <artodeto@bazzline.net>
####

Set-ExecutionPolicy Bypass -Scope Process
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
