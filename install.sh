cd ~

apt-get update
apt-get upgrade
apt-get install vim zsh git tig curl gcc python-pip python-dev libmysqlclient-dev libapache2-mod-wsgi python-mysqldb mysql-server -y
apt-get install openjdk-7-jre-headless -y

# Install flash player for Firefox via PPA
add-apt-repository  ppa:andykimpe/freshplayerplugin-daily
apt-get update
apt-get install freshplayerplugin

# Install ruby and sass for elasticsearch
apt-get install ruby
gem install sass

# Install elasticsearch
sh elasticsearch_easyinstall.sh

# Install Sublivim
curl https://raw.githubusercontent.com/reversTeam/Sublivim/master/installer.sh | sh

# Copying conf files && colors
cp conf/zshrc ~/.zshrc
cp conf/vimrc ~/.vimrc 
cp conf/vimrc ~/.Sublivim/vimrc
cp -r colors ~/.vim/colors

pip install -r pip.install

apt-get update
apt-get upgrade

zsh
source ~/.zshrc
