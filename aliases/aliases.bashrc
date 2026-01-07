al ll='ls -lh'
al la='ls -a'
al lla='ls -lah'
al l='ls -lah'
al sudo='sudo '
al rmrf='rm -rf'
al rmr='rm -r'
al rmf='rm -f'
al snano='sudo nano'
al nsmi=nvidia-smi
if [ -d ~/.bashrc.d/aliases/package_managers ];then
	. ~/.bashrc.d/aliases/package_managers/setup.bashrc
fi
if [ -d ~/scripts ];then
	for x in $(ls ~/scripts/)
	do
		al $x=/home/venkatesh/scripts/$x
	done
fi
