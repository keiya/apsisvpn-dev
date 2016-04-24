#mkdir -p tmp
#cd tmp
#find -name "tinc.tar.gz" -mtime +5 -exec rm {} \;
#wget -nc -O tinc.tar.gz https://www.tinc-vpn.org/packages/tinc-1.1pre11.tar.gz
#tar xf tinc.tar.gz --strip-components 1
#rm tinc.tar.gz
#sudo aptitude install -y zlib1g-dev libncurses5-dev libreadline-dev liblzo2-dev libssl-dev
#make clean
#./configure
#make
