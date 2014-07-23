cd ~

apt-get update
apt-get upgrade
apt-get install vim zsh git tig curl gcc python-pip python-dev libmysqlclient-dev libapache2-mod-wsgi python-mysqldb mysql-server -y
apt-get install openjdk-7-jre-headless -y
pip install -r pip.install

# Install elasticsearch
sh elasticsearch_easyinstall.sh

# Install Sublivim
curl https://raw.githubusercontent.com/reversTeam/Sublivim/master/installer.sh | sh

# Copying conf files && colors
cp conf/zshrc ~/.zshrc
cp conf/vimrc ~/.vimrc 
cp conf/vimrc ~/.Sublivim/vimrc
cp -r colors ~/.vim/colors

apt-get update
apt-get upgrade

zsh
cd ~
source .zshrc
