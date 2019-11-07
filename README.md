# INDIGO PPA for debian systems

Binary distribution of INDIGO Infrastructure or INDIGO Control Panel can be installed on Linux either automatically by apt-get or manually by dpkg.

To setup automatic installation and subsequent updates, you need to add our repository URL to APT sources list. To do it from command line, open the file /etc/apt/sources.list as root with you favourite editor, e.g. like this

`$ sudo vi /etc/apt/sources.list`

and append the following line to the end of the file

`deb [trusted=yes] https://indigo-astronomy.github.io/indigo_ppa/ppa indigo main`

and execute the following commands

`$ sudo apt-get update`

`$ sudo apt-get install indigo`

`$ sudo apt-get install indigo-control-panel`
