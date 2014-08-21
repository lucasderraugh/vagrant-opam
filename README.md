# Instructions for getting the VM up and running

===

1. Download and install vagrant from [here](http://www.vagrantup.com/downloads.htmlli)

2. Download and install x windows and a shell

  - on Windows
      TODO

  - on Linux
      skip this step.

  - on MacOS
      TODO

3. Download and install the 3110 virtual machine

   TODO: replace this with http/zip?
git clone https://github.com/cs3110/vagrant-opam.git
cd vagrant-opam
vagrant up

Note: vagrant up will take a long time (about an hour) the first time.

4. Log into your new virtual machine:

vagrant ssh

5. When you are done, log out by typing control-D

6. The virtual machine is still running.  You can suspend it by typing

vagrant suspend

and then restart it later by typing

vagrant up
