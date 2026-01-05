if [ ! command -v git ]; then
	echo "Git not found. Install git to continue."
	exit 1
fi
setup() {
	git clone https://github.com/ravipudivenky555/bashrc.d $1
	echo ". $1/init.bashrc" >>~/.bashrc
	echo "Setup complete."
	exit 0
}
if [ ! -d ~/.bashrc.d ]; then
	setup ~/.bashrc.d
fi
cd ~/.bashrc.d
git rev-parse 2 &>/dev/null
if [ $? -eq 0 ]; then
	GIT_URL=$(git remote get-url origin)
	if [ ! $GIT_URL -eq https://github.com/ravipudivenky555/bashrc.d ]; then
		echo "Incorrect remote URL set."
		exit 1
	else
		git pull origin main
		if [ $? -eq 0 ]; then
			echo "Update to latest version complete."
			exit 0
		else
			echo "Conflicting commits found."
		fi
	fi
else
	echo "Preferred directory name conflicts with existing directory name."
fi
while true; do
	echo "What do you wish to do?"
	echo "1)Delete .bashrc.d and install my profile."
	echo "2)Use different directory name."
	echo "3)Do nothing(Abort install and exit)."
	echo -n "Enter your choice(1-3):"
	read ACTION
	case $ACTION in
	1)
		rm -rf ~/.bashrc.d
		setup ~/.bashrc.d
		;;
	2)
		echo -n "Enter a directory name:"
		read DIR_NAME
		if [ ! -d $DIR_NAME ]; then
			setup $DIR_NAME
		else
			echo "$DIR_NAME already exists."
		fi
		;;
	3)
		exit 0
		;;
	*)
		echo "Enter a valid option(1-3)."
		sleep 3
		;;
	esac
done
