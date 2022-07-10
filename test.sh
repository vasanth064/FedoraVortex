sudo apt update -y
sudo apt install git snapd zsh rofi xsel

sudo snap install core
sudo snap install gh

#config Git
git config --global user.email "vasanthvdev@gmail.com"
git config --global user.name "vasanth064"

./user.sh
echo '----------------Installation Complete----------------'
read
./postInstall.sh