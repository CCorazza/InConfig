# OLD WAY / HARD WAY
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.tar.gz
tar -xf elasticsearch-1.1.1.tar.gz
rm elasticsearch-1.1.1.tar.gz
mv elasticsearch-* elasticsearch
mv elasticsearch /usr/local/share
 
curl -L http://github.com/elasticsearch/elasticsearch-servicewrapper/tarball/master | tar -xz
mv *servicewrapper*/service /usr/local/share/elasticsearch/bin/
rm -Rf *servicewrapper*
/usr/local/share/elasticsearch/bin/service/elasticsearch install
ln -s `readlink -f /usr/local/share/elasticsearch/bin/service/elasticsearch` /usr/local/bin/rcelasticsearch
 
service elasticsearch start
