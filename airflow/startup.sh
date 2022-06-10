#Install docker repository

sudo apt-get update
sudo apt update


sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#Install docker


sudo apt install docker-ce docker-ce-cli containerd.io

#Install Docker-compose


sudo apt-get install docker-compose-plugin