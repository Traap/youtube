_Install Arch Linux into WSL2_
  :wsl2:

# ArchLinux to WSL2

## Yuk7 ArchWSL:
  1. [GitHub Site](https://github.com/yuk7/ArchWSL)
  2. [Docs](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup)
  3. [Latest Release](https://github.com/yuk7/ArchWSL/releases/tag/22.10.16.0)
  4. [Add sshkey to Github](https://github.com/settings/keys)

## Download
  1. Arch.zip
  2. ArchWSL-AppX_YY.MM.DD.n.cer

## Unzip
  1. Unzip Arch.zip to a location you will use for your Archlinux file system.
  2. Optinally, rename Arch.exe to the name you want WSL to use as the
     registered name.
  3. Double click Arch.exe or rename file.

## Basic Archlinux setup
  1. Set root password
  2. Setup default user
  3. Set default user password

## Shutdown and restart Arch from Windows command promp
  1. wsl --shutdown
  2. run Arch.exe

## bootstrap_archlinux
  1. clone https://github.com/Traap/bootstrap-archlinux.git
  2. Update the following files as necessary
     a. config
     b. repos
     c. packages
  3. run install.sh.
