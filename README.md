arch-install - Simple Arch Linux Install Script
===============================================

Simple [Arch Linux][arch] shell script that I use to learn the install 
process. This project was tested in a virtualbox virtual machine.
I didn't test in a real machine, so maybe it doesn't work.

Read this script and learn with it.

### Process

  1. Read the arch wiki section about installation. The [Install Guide][docs].
  2. Clone this repository to your machine, read it and understand it.
  3. Download the [Arch Linux installer ISO][iso].
  4. Copy the `install.sh`, `funcs` and `variables.yml` with scp to live system.
  5. Change variables if needed.
  6. Run the `install.sh` script.

[arch]: https://www.archlinux.org/
[docs]: https://wiki.archlinux.org/index.php/Official_Arch_Linux_Install_Guide
[iso]: https://www.archlinux.org/download/

### Details

By default, the script will create two physical partitions, a 512MB /boot (with FAT
filesystem) partition, and the rest as an ext4 filesystem to root.
After partitioning, the base package group is installed.

After installing the base package group, the script sets up all the common
configuration files based on the values of the variables in `variables.yml` file.
You should also at least browse through the config files here to make
sure they are what you want to do.

By default, only the base system is installed, but I do want to increase this script
and prepare the whole system. Just reboot and you are good to go.


### Inspiration

Before I start this script, I look for other projects at github. The inspiration came
from [Arch Ultimate Install][aui] and [Tom's Arch Install script][arch-tom].


[aui]: https://github.com/helmuthdu/aui 
[arch-tom]: https://github.com/tom5760/arch-install

