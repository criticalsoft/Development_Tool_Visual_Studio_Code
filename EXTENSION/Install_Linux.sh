#https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions


wget -qO- https://deb.nodesource.com/setup_14.x | sudo -E bash -
#curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

sudo apt update

#Debian Stable, Mint npm Is Included In nodejs
#DEP: npm Install JSHint (Visual Studio Code Extension CLI)
sudo apt install -y nodejs

#Debian Testing
#sudo apt install -y npm




################
#DEP: JSHint Extension
sudo npm install -g jshint



