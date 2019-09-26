# Set permission and change directory to it.
cd $HOME/multipool/install

# Update it.
sudo chown -R $USER $HOME/multipool/install/.git/
if [ "${TAG}" != `git describe --tags` ]; then
	echo Updating bunbunbunbunbunny MultiPool Installer to ${TAG} . . .
	git fetch --depth 1 --force --prune origin tag ${TAG}
	if ! git checkout -q ${TAG}; then
		echo "Update failed. Did you modify something in `pwd`?"
		exit
	fi
	echo
fi

# Start setup script.
bash $HOME/multipool/install/start.sh
