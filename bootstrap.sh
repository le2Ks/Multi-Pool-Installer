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

	git clone https://github.com/bunbunbunbunbunny/multipool_setup;
	mkdir multipool;
	cd multipool;
	mkdir install;
	cd;
	sudo chmod 775 -R multipool;
	git clone https://github.com/bunbunbunbunbunny/multipool_setup.git;
	sudo chmod 775 -R multipool_setup;
	cp -a multipool_setup/. multipool/install/;
	bash multipool/install/start.sh;
	
