#!/bin/bash
if [[ $# -eq 0 ]] ; then
    echo 'please enter java version!'
    exit 1
fi

version=$1

sudo apt-get install -y python-software-properties debconf-utils
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo "oracle-java${version}-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java${version}-installer