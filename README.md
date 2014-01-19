# CS 3110 VM #

## Instructions ##
Follow these instructions to get the VM up and running.

1. Download and install [vagrant](http://www.vagrantup.com/downloads.html).

2. Download and install x windows, a shell, and VirtualBox
    - on Windows
        - **TODO**
    - on Linux
        - [VirtualBox Downloads](https://www.virtualbox.org/wiki/Downloads)
    - on MacOS
        - **TODO**

3. Download and install the 3110 virtual machine

   **TODO**: replace this with http/zip?
   
        git clone https://github.com/cs3110/vagrant-opam.git
        cd vagrant-opam
        vagrant up

   *Note*: `vagrant up` will take a long time the first time.

        real    42m1.079s
        user    0m19.697s
        sys     0m17.113s

4. Log into your new virtual machine:

        vagrant ssh

5. When you are done, log out by typing control-D

6. The virtual machine is still running.  You can suspend it by typing

        vagrant suspend

   and then restart it later by typing

        vagrant up

## Resources ##
- [Vagrant: Getting Started](http://docs.vagrantup.com/v2/getting-started/index.html)
- [Vagrant Downloads](http://www.vagrantup.com/downloads.html)
- [VirtualBox Downloads](https://www.virtualbox.org/wiki/Downloads)
- [VirtualBox User Manual](https://www.virtualbox.org/manual/UserManual.html)
