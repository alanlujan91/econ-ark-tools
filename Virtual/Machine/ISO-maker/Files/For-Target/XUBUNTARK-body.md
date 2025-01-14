
Configuration details:

1. The screensaver and lock-screen features are turned off by default
   * Fix this, if desired, using the control panel at the upper left
1. The machine is configured with only one username: econ-ark
   * The password is the username spelled backwards
1. This machine is highly insecure
   * Do not store important personal information on it

Several tools for communicating with the machine are installed

1. An ssh server is installed and operating
   * You should be able to connect via a command like:
      * `ssh econ-ark@[your-VM-IP-Address]` using the usual password
1. There is a [vnc](https://en.wikipedia.org/Virtual\_Network\_Computing) server installed and operating 
   * This enables viewing the VM's screen from another computer 
   * You will need VNC viewer client software to do so 
   * You can disable the VNC viewer (for security):
      * Comment out the first couple of lines of `/home/econ-ark/.bash_aliases`
1. The `avahi` networking software is also installed
   * This makes it easy to start an ssh shell from a Mac on the network

The ISO installer file that creates this machine is in the /media directory.
To install to another drive/USB-stick:
   1. "Burn" the ISO image to an installer location 
   1. Boot your computer from the "burned" installer
   1. Choose the new medium on which you want to install XUBUNTARK

For a bit more information, see the file `/var/local/About_This_Install.md`

For detailed information about how the machine was constructed and configured, see [econ-ark-tools](https://github.com/econ-ark/econ-ark-tools/tree/master/Virtual#most-powerful)

