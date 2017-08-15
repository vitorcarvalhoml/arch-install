#!/bin/bash

if [[ -f `pwd`/funcs ]]; then
  source funcs
else
  echo "missing file: funcs"
  exit 1
fi

read_yaml
if [ ! "$1" == "chroot" ]; then
  verify_uefi
  show_variables
  create_partitions $config_drive $config_partitions_root $config_partitions_boot 
  select_mirrors $config_country_name $config_country_code
  install_base
  genfstab -L /mnt >> /mnt/etc/fstab
  cp install.sh /mnt/setup.sh
  cp funcs /mnt/funcs
  cp variables.yml /mnt/variables.yml
  arch-chroot /mnt ./setup.sh chroot
  if [ -f /mnt/setup.sh ]; then
    echo "error, something failed"
  else
    echo "umount filesystems"
    finish_installation
  fi
else
  echo "estou no chroot"
  configure_system
fi

