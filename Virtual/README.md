# Virtual Machine Options

You have several options for installing a virtual machine containing the Econ-ARK tools.

## Easiest

Install "Docker" on your computer, and follow the instructions in the [Docker]() directory to run everything inside a "container" on your computer

* Docker shares resources with your computer
* Your computer's regular operations will sap the performance of the Docker machine
	
## Most Powerful 

Your computer can be (temporarily; reversibly; while booted from the
external USB stick) turned into a Linux-native machine, which makes
its full resources (RAM; processors) available to the software. This
is like a brain transplant for your computer, and is worth doing if
you will be spending a lot of time working with the tools

* This will require you to have two USB sticks
   1. A small one to hold the installer software (say, 4GB)
   1. A large one to hold the installed system (at least 64 GB)
* Be sure to get a _fast_ USB stick, at least for the large dive
* [xubark-MIN](#MIN-or-MAX) and [xubark-MAX](#MIN-or-MAX) are ISO image files described below
* Download them and "burn" them to a USB stick (or CD-ROM)

## In-Between

You can install VirtualBox on your computer, which will allow you to
run Linux in a virtual machine that is encapsulated on your regular
hard drive.  This has the advantage of being very safe (the virtual
machine is completely contained inside a VirtualBox jail; you have to
give it permissions to do everything). It has the disadvantage, like
the Docker solution, of requiring your computer to share its
resources.

It also requires a fair bit of configuration, so there is a separate set 
of instructions:

[econ-ark/econ-ark-tools/Virtual/Machine/VirtualBox](https://github.com/econ-ark/econ-ark-tools/tree/master/Virtual/Machine/VirtualBox)


# MIN or MAX

### [xubark-MIN](https://drive.google.com/drive/folders/1yGk_LFM6y3M_Y_8BbYdwoMQ14wGFQPZB?usp=sharing)

Installs python3, jupyter lab, Econ-ARK, and not much else. The total size
of the software is about 7 GB, so even if you have a fairly small USB
stick you should be able to run Econ-ARK stuff on it.

Installation of this machine should take roughly an hour if you have reasonably
fast internet access.

Even if you plan ultimately to install the MAX version described below, you might
do a "test run" with the MIN version because it is considerably faster.

### [xubark-MAX](https://drive.google.com/drive/folders/1OarYGCwW4Avc1UMpPHsIMWr4jh0tKUn6?usp=sharing)

In addition to the contents of [xubark-MIN](#xubark-MIN), the MAX version includes a full installation of:

1. Anaconda 3
1. LaTeX
1. QuantEcon
1. scipy

and a suite of other tools that together construct a machine that
should be adequate for a rich variety of tasks for scientific
computation. Indeed, the VM can run code (installed) that reproduces
the full results of several computational economics papers.

This machine is considerably larger, and so will take longer to install, perhaps
several hours.

## Instructions for Installing your VM

### [Burn](#burn) your chosen ISO image (MIN or MAX) to the small USB stick

0. Download your selected (MIN or MAX) ISO image to your computer
0. "mount" the image so that the computer can see it
   * On Macs, this is done with the Disk Utility app ("open image")
      * ["Carbon Copy Cloner"](https://bombich.com/ccc5/how-does-free-30-day-trial-work) is the most reliable option 
	     * Format your USB stick to MS-DOS
		 * Clone from the mounted ISO image to the formatted USB stick
      * [UNETBOOTIN](https://unetbootin.github.io)
  	     * If you use this, you need FIRST to
	        1. Format your USB drive (using Disk Utility) as MS-DOS
		    1. Mount the USB drive on your computer
	     * Then run the unetbootin app and choose "Drive Image"
	        * Navigate to wherever you have downloaded your ISO
      * ["Etcher"](https://balena.io/etcher/)
	     * Seems to work on 2015-2019 vintage macs
	     * Fails on some earlier and later ones
      * [Create-A-USB-Stick-On-Macs](https://ubuntu.com/tutorials/create-a-usb-stick-on-macs) is another resource
	  * [Create-A-USB-Stick-On-Windows](https://ubuntu.com/tutorials/create-a-USB-stick-On-Windows)
      * I don't have a Windows machine so can't debug this


### Boot your computer from the USB stick

1. Macs:
   * Hold the "option" key when the compute is booting
   * Depending on your model, you will see one of
      * "ARKINSTALL"
	  * "EFI BOOT"
   * Pick whichever of these options you see
1. Windows:
   * The steps to boot from an external drive depend on your model
       * There are lots of tutorials on the web
	  
### Do Not Destroy Your Real Computer!

When you boot from the installer USB stick, the first question you are likely to be asked is whether you want to "unmount active partitions." The answer is yes -- the only "active partitions" should be those on the booted USB stick, and you don't want it to write over itself

The next question you will need to answer is where you want to install the system.

There are a number of options, but you should pick "entire disk"

* Don't worry, it won't wipe your computer's drive clean
* Instead it will ASK you which of the available drives you want to use
* One of them should have a name corresponding to the large USB stick. Pick that.
* You will then be asked a couple of further questions
   * Just hit "enter" or choose "yes" repeatedly
* The last question is whether you want to write the new partioning schemes 
  * It will show your USB stick's partitioning scheme
  * It will ALSO show your computer's drive partitioning scheme 
  * Don't worry, it won't actually do anything to your computer's scheme
      * So, say "yes"
		  
### Wait

The installation proceeds in two stages:

1. Constructing the basic Linux operating system and GUI
1. Adding supplemental materials
   * Like Econ-ARK
   
The machine will reboot a couple of times during this process. If necessary, you may need to coax your computer to reboot from the right drive (the new one!)

### Enjoy!

The result should be a fully functional installation of Linux from which you can boot your computer. In fact, on the first boot, it should automatically login as:

username: econ-ark

password: kra-noce

PS. Since this username and password are publicly available on the net, you should make sure that you do not store sensitive personal information on the virtual machine.
