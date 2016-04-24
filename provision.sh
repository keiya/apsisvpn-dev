aptitude update
aptitude install -y netselect-apt apt-transport-https ca-certificates
netselect-apt -c japan stable
mv sources.list /etc/apt/

# docker
DOCKER_SOURCE="/etc/apt/sources.list.d/docker.list"
touch $DOCKER_SOURCE
echo "deb https://apt.dockerproject.org/repo debian-jessie main" >> $DOCKER_SOURCE

apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
aptitude update
aptitude upgrade -y

aptitude install -y docker-engine
gpasswd -a vagrant docker
sudo service docker restart

cd /vagrant
docker build -t tinc .

# to build tinc
#aptitude install -y build-essential zlib1g-dev libncurses5-dev libreadline-dev liblzo2-dev libssl-dev gawk
#
#cd /vagrant/tmp
#tar xf tinc.tar.gz --strip-components 1
#rm tinc.tar.gz
#./configure
#make
#make install
