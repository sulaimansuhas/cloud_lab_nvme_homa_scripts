sed -i 's/\/home\/ubuntu/\/users\/suhassn/g' /users/suhassn/net-next/drivers/nvme/target/Makefile
sed -i 's/\/home\/ubuntu/\/users\/suhassn/g' /users/suhassn/net-next/drivers/nvme/host/Makefile
sed -i 's/\/home\/ubuntu/\/users\/suhassn/g' /users/suhassn/HomaModule/Makefile
sed -i 's/\/home\/ubuntu/\/users\/suhassn/g' /users/suhassn/nvmescripts/*.sh
sed -i 's/\/home\/$USER/\/users\/suhassn/g' /users/suhassn/nvmescripts/*.sh
sed -i 's/192\.168\.122\.201/192.168.2.2/g' /users/suhassn/nvmescripts/*.sh
sed -i '/^sh \/users\/suhassn\/nvmescripts\/sethomaparams\.sh/s/^/# /g' /users/suhassn/nvmescripts/*.sh

