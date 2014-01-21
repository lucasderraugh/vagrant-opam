# CS 3110 VM #

## Instructions ##
Follow these instructions to get the VM up and running.

1. Download and install [virtual box](https://www.virtualbox.org/wiki/Downloads)

2. Download the [3110 virtual machine image](https://www.dropbox.com/s/eyhumb5u2y2x6fw/cs3110-VM.ova)

3. Import the VM
    - run VirtualBox
    - select File -> Import Appliance
    - select "Open Appliance", and choose the default settings

4. Run the VM
    - select cs3110-VM from the list
    - click "Start"

## Building the VM image ##

1. vagrant up
   - note: for some reason I don't understand, this fails.  I have to then do

		$ vagrant ssh
		$ sudo /usr/share/debconf/fix_db.pl
		$ logout
		$ vagrant provision

     it seems to work the second time around...

2. vagrant halt
3. run Virtual Box
4. start the machine
5. change to fullscreen
6. halt the machine
7. export the VM appliance (in the "machine" menu)

