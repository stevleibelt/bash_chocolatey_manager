#!/usr/bin/env pwsh
####
# Exports currently local installed packages including version number into a file
#
# @see: https://gist.github.com/alimbada/449ddf65b4ef9752eff3#gistcomment-2140819
####
# @since 2020-02-19
# @author stev leibelt <artodeto@bazzline.net>
####

Write-Output "<?xml version=`"1.0`" encoding=`"utf-8`"?>"
Write-Output "<packages>"
choco list -lo -r -y | % { "   <package id=`"$($_.SubString(0, $_.IndexOf("|")))`" version=`"$($_.SubString($_.IndexOf("|") + 1))`" />" }
Write-Output "</packages>"
