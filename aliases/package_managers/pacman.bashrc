al paci='pacman -Syu'
al pacr='pacman -R'
al pacrem='pacman -Rcns'
al pclean='pacman -Scc'
al pacsearch='pacman -Ss'
if [[ command -v paru ]];then
	al yay=paru
fi
