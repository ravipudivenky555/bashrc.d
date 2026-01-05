al ll='ls -lh'
al la='ls -a'
al lla='ls -lah'
al l='ls -lah'
al sudo='sudo '
al rmrf='rm -rf'
al rmr='rm -r'
al rmf='rm -f'
al nconfig='nano /etc/nixos/configuration.nix'
al nhconfig='nano /etc/nixos/hardware-configuration.nix'
al nbuild='nixos-rebuild boot'
al nbuildnow='nixos-rebuild switch'
al snano='sudo nano'
al nsmi=nvidia-smi
if [ -d ~/scripts ]
then
	for x in $(ls ~/scripts/)
	do
		al $x=/home/venkatesh/scripts/$x
	done
fi
