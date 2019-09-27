#!/usr/bin/env bash


#########################################################
# Source https://mailinabox.email/ https://github.com/mail-in-a-box/mailinabox
# Updated by bunbunbunbunbunny for crypto use...
# This script is intended to be run like this:
#
#   curl https://raw.githubusercontent.com/bunbunbunbunbunny/Multi-Pool-Installer/master/bootstrap.sh | bash
#
#########################################################


	
	echo Downloading bunbunbunbunbunny MultiPool Installer ${TAG}. . .
	
	apt-get install git;
	mkdir multipool;
	cd multipool;
	mkdir install;
	cd;
	git clone https://github.com/bunbunbunbunbunny/multipool_setup;
	
clear
	echo Copying files ${TAG}. . . 
	
	
	cp -a multipool_setup/. multipool/install/;
	chmod 775 -R multipool;
	bash multipool/install/start.sh;
	
