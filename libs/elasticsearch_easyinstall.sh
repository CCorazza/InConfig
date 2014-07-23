#Pre-requisite: 
cd ~
sudo apt-get install openjdk-7-jre-headless -y
 
### Check http://www.elasticsearch.org/download/ for latest version of ElasticSearch and replace wget link below
 
# NEW WAY / EASY WAY
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.deb
sudo dpkg -i elasticsearch-1.1.1.deb
sudo service elasticsearch start
