echo "Please Pick an option:"
echo "1) On a target machine"
echo "2) On a host machine"
read -p "Enter choice 1 or 2:" option
if [ $option -ne 1 ] || [ $option -ne 2 ]; then
	echo "Unknown option has been entered"
	exit
fi
cd /users/suhassn/
git clone https://github.com/sulaimansuhas/nvmescripts.git
git clone https://github.com/sulaimansuhas/HomaModule.git
git clone https://github.com/sulaimansuhas/Nvme_HOMA_diffs.git
git clone https://github.com/sulaimansuhas/tmuxconfig.git
git clone https://github.com/tmux-plugins/tpm /users/suhassn/.tmux/plugins/tpm
for i in $(seq 1 15); do sudo sh -c "echo 0 > /sys/devices/system/cpu/cpu${i}/online"; done
ln -s  /usr/local/net-next /users/suhassn/net-next
ln -s  /users/suhassn/tmuxconfig /users/suhassn/.tmux.conf
cd /users/suhassn/net-next/
git checkout -b nvme-homa


if [ $option -eq 1 ]; then
	echo "Applying target patch"
	git am < /users/suhassn/Nvme_HOMA_diffs/target.diff
elif [ $option -eq 2 ]; then
	echo "Applying host patch"
	git am < /users/suhassn/Nvme_HOMA_diffs/target.diff
fi



