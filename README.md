# Description

This is free as i freedom simple wrapper to backup and restore packages maintained by chocolatey.

The current change log can be found [here](CHANGELOG.md).

The "restore.sh" will install chocolatey if not installed.
The "backup.sh" will create a local file containing the currently installed packages.

# Important chocolatey commands you should know

```
#search for software
choco search <pattern>

#install software
choco install <software>[,<software>[,...]]

#upgrade all installed software
choco upgrade all

#remove software
choco uninstall <software>[,<software>[,...]]

#display help
choco /?
```

# Mandatory environment

This is tested on a windows 10 machine.
You need to have power shell installed at least.
You get way more comfort if you have installed bash as well.

# How to

## Doing it via bash scripts

```
#export local installed packages
./backup.sh

#restore from backup
#   this will also install chocolatey if needed
./restore.sh
```

## Doing it via Power Shell commands

```
#export local installed packages
powershell -ExecutionPolicy Bypass -File export_currently_installed_packages.ps1 > local_packages.config

#for intial setup
powershell -ExecutionPolicy Bypass -File setup.ps1

#install chocolatey
powershell -ExecutionPolicy Bypass -File install_chocolatey.ps1 

#install packages
powershell -ExecutionPolicy Bypass -File install_packages.ps1
```
