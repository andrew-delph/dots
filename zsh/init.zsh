# cd
if [[ "$PWD" == /mnt/* ]]; then
	echo "init is in host system. going going wsl ~/git."
	cd ~/git
fi
echo "### tmux sessions"
tl
