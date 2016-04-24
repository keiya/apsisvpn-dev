mkdir -p tmp
cd tmp
wget -O tinc.tar.gz https://www.tinc-vpn.org/packages/tinc-1.1pre11.tar.gz
tar xf tinc.tar.gz --strip-components 1
rm tinc.tar.gz
sudo aptitude install -y libncurses5-dev libreadline-dev liblzo2-dev libssl-dev
./configure
make
