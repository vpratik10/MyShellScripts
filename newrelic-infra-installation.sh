#!/bin/bash

function AmazonLinux(){
read -p " find by 1)AmazonLinux 2 or 2)AmazonLinux : " OS1
read -p " Enter License Key : " KEY

case $OS1 in

1)# Create a configuration file and add your license key \
echo "license_key: $KEY" | sudo tee -a /etc/newrelic-infra.yml && \
\
# Create the agent's yum repository \
sudo curl -o /etc/yum.repos.d/newrelic-infra.repo https://download.newrelic.com/infrastructure_agent/linux/yum/el/7/x86_64/newrelic-infra.repo && \
\
# Update your yum cache \
sudo yum -q makecache -y --disablerepo='*' --enablerepo='newrelic-infra' && \
\
# Run the installation script \
sudo yum install newrelic-infra -y
;;

2)# Create a configuration file and add your license key \
echo "license_key: $KEY" | sudo tee -a /etc/newrelic-infra.yml && \
\
# Create the agent's yum repository \
sudo curl -o /etc/yum.repos.d/newrelic-infra.repo https://download.newrelic.com/infrastructure_agent/linux/yum/el/6/x86_64/newrelic-infra.repo && \
\
# Update your yum cache \
sudo yum -q makecache -y --disablerepo='*' --enablerepo='newrelic-infra' && \
\
# Run the installation script \
sudo yum install newrelic-infra -y
;;

esac
}

##############################################################################################################################

function CentOS(){
read -p " find by 1)CentOS 8 or 2)CentOS 7 : " OS
read -p " Enter License Key : " KEY

case $OS in

1)# Create a configuration file and add your license key \
echo "license_key: $KEY" | sudo tee -a /etc/newrelic-infra.yml && \
\
# Create the agent’s yum repository \
sudo curl -o /etc/yum.repos.d/newrelic-infra.repo https://download.newrelic.com/infrastructure_agent/linux/yum/el/8/x86_64/newrelic-infra.repo && \
\
# Update your yum cache \
sudo yum -q makecache -y --disablerepo='*' --enablerepo='newrelic-infra' && \
\
# Run the installation script \
sudo yum install newrelic-infra -y
;;

2)# Create a configuration file and add your license key \
echo "license_key: $KEY" | sudo tee -a /etc/newrelic-infra.yml && \
\
# Create the agent’s yum repository \
sudo curl -o /etc/yum.repos.d/newrelic-infra.repo https://download.newrelic.com/infrastructure_agent/linux/yum/el/7/x86_64/newrelic-infra.repo && \
\
# Update your yum cache \
sudo yum -q makecache -y --disablerepo='*' --enablerepo='newrelic-infra' && \
\
# Run the installation script \
sudo yum install newrelic-infra -y
;;

esac
}


#############################################################################################################################

function RHEL(){
read -p " find by 1)RHEL 8 or 2)RHEL 7 : " OS
read -p " Enter License Key : " KEY

case $OS in

1)# Create a configuration file and add your license key \
echo "license_key: $KEY" | sudo tee -a /etc/newrelic-infra.yml && \
\
# Create the agent’s yum repository \
sudo curl -o /etc/yum.repos.d/newrelic-infra.repo https://download.newrelic.com/infrastructure_agent/linux/yum/el/8/x86_64/newrelic-infra.repo && \
\
sudo yum -q makecache -y --disablerepo='*' --enablerepo='newrelic-infra' && \
\
# Run the installation script \
sudo yum install newrelic-infra -y
;;

2)# Create a configuration file and add your license key \
echo "license_key: $KEY" | sudo tee -a /etc/newrelic-infra.yml && \
\
# Create the agent’s yum repository \
sudo curl -o /etc/yum.repos.d/newrelic-infra.repo https://download.newrelic.com/infrastructure_agent/linux/yum/el/7/x86_64/newrelic-infra.repo && \
\
# Update your yum cache \
sudo yum -q makecache -y --disablerepo='*' --enablerepo='newrelic-infra' && \
\
# Run the installation script \
sudo yum install newrelic-infra -y
;;

esac
}

############################################################################################################################

function Ubuntu(){
read -p " find by 1)Ubuntu 18 or 2)Ubuntu 16 : " OS
read -p " Enter License Key : " KEY

case $OS in

1)# Add the New Relic Infrastructure Agent gpg key \
curl -s https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg | sudo apt-key add - && \
\
# Create a configuration file and add your license key \
echo "license_key: $KEY" | sudo tee -a /etc/newrelic-infra.yml && \
\
# Create the agent’s yum repository \
printf "deb [arch=amd64] https://download.newrelic.com/infrastructure_agent/linux/apt bionic main" | sudo tee -a /etc/apt/sources.list.d/newrelic-infra.list && \
\
# Update your apt cache \
sudo apt-get update && \
\
# Run the installation script \
sudo apt-get install newrelic-infra -y
;;

2)# Add the New Relic Infrastructure Agent gpg key \
curl -s https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg | sudo apt-key add - && \
\
# Create a configuration file and add your license key \
echo "license_key: $KEY" | sudo tee -a /etc/newrelic-infra.yml && \
\
# Create the agent’s apt repository \
printf "deb [arch=amd64] https://download.newrelic.com/infrastructure_agent/linux/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/newrelic-infra.list && \
\
# Update your apt cache \
sudo apt-get update && \
\
# Run the installation script \
sudo apt-get install newrelic-infra -y
;;

esac
}

#############################################################################################################################

read -p " Welcome to 'New Relic Infrastructure Agent' setup wizard.Select your OS. 1)-AmazonLinux 2)-CentOS 3)-RHEL 4)-Ubuntu [1-4]: " MENU

case $MENU in
1) AmazonLinux ;;
2) CentOS ;;
3) RHEL ;;
4) Ubuntu ;;
esac

