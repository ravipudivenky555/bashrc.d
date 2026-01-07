PM_DIR=~/.bashrc.d/aliases/package_managers
command_chk(){
	command -v $1 >/dev/null 2&>/dev/null
}
if command_chk pacman ;then
	. $PM_DIR/pacman.bashrc
fi
if command_chk nix ;then
	. $PM_DIR/nix.bashrc
fi
