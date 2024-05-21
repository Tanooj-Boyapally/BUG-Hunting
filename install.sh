#!/bin/sh

echo "updating the machine"
apt update -y

echo "install dirsearch"
apt install dirsearch -y

echo "installing subfinder"
apt install subfinder -y

echo "installing sublist3r"
apt install sublist3r -y

echo "installing httprobe"
apt install httprobe -y



echo "installing go lang"
apt install golang-go -y

echo "installing nuclei"
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
mv ~/go/bin/nuclei  /usr/bin/nuclei


echo "installing gau"
git clone https://github.com/lc/gau.git
cd gau/cmd/gau
echo "go build command for gau"
go build
mv gau /usr/local/bin/gau
cd /home/
