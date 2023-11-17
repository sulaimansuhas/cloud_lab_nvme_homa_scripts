cd /users/suhassn/
git clone https://github.com/sulaimansuhas/nvmescripts.git
git clone https://github.com/sulaimansuhas/HomaModule.git
git clone https://github.com/sulaimansuhas/Nvme_HOMA_diffs.git
git clone https://github.com/sulaimansuhas/tmuxconfig.git
git clone https://github.com/tmux-plugins/tpm /users/suhassn/.tmux/plugins/tpm
for i in $(seq 1 15); do sudo sh -c "echo 0 > /sys/devices/system/cpu/cpu${i}/online"; done
ln -s  /usr/local/net-next /users/suhassn/net-next
ln -s  /users/suhassn/tmuxconfig /users/suhassn/.tmux.conf

