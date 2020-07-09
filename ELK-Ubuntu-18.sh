#!/bin/bash

#Install Java
sudo apt install default-jre -y


#Elastic Search

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list

sudo apt update

sudo apt install elasticsearch

sed -i 's/^#network.host:.*/network.host: localhost/' /etc/elasticsearch/elasticsearch.yml


sudo systemctl start elasticsearch

sudo systemctl enable elasticsearch

curl -X GET "localhost:9200"

#Kibana

sudo apt install kibana

sudo systemctl enable kibana

sudo systemctl start kibana

#Logstash

sudo apt install logstash


