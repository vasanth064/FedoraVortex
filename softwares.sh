#Installing pre-requtites for External Sources
dnf check-update
sudo dnf install git curl wget -y

#Requirements for user.sh
#Icons
sudo dnf install numix-icon-theme-circle -y

#Adding apt External Sources 
#vs code
sudo dnf install wget gpg dnf-plugins-core fedora-workstation-repositories -y

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update

#edge
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo dnf config-manager --add-repo https://packages.microsoft.com/yumrepos/edge
dnf check-update

#chrome
sudo dnf config-manager --set-enabled google-chrome
dnf check-update

sudo dnf install vlc gimp gparted snapd flatpak dconf-editor scrcpy adb code dkms rar unrar microsoft-edge-stable rofi rofimoji xsel gstreamer1.0-libav gstreamer1.0-plugins-ugly zsh qemu-kvm bridge-utils libvirt-daemon virt-manager chrome-gnome-shell google-chrome-stable gnome-tweaks pip -y
#xsel for copying emojis in rofi

#Removing Duplicates form apt Sources
rm -f packages.microsoft.gpg
sudo rm microsoft.gpg
sudo rm -rv /etc/apt/sources.list.d/microsoft-edge-dev.list

#snap Packages
sudo snap install core
sudo snap install emote
sudo snap install gh

#flatpak Packages
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.nomacs.ImageLounge -y #Image Viewer (Frameless)
flatpak install flathub com.spotify.Client -y
flatpak install flathub org.telegram.desktop -y
flatpak install flathub com.getpostman.Postman -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub io.bassi.Amberol -y #Music Player
flatpak install flathub com.mattjakeman.ExtensionManager -y 
flatpak install flathub io.github.Figma_Linux.figma_linux -y
flatpak install flathub io.github.shiftey.Desktop -y
flatpak install flathub org.onlyoffice.desktopeditors -y
flatpak install flathub com.obsproject.Studio -y

#Install and configure Virtual Manager
sudo virsh net-start default
sudo virsh net-autostart default
sudo adduser vasanth libvirt
sudo adduser vasanth libvirt-qemu

#NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | zsh

sudo apt update -y
sudo apt upgrade -y
sudo apt auto-remove -y

#config Git
git config --global user.email "vasanthvdev@gmail.com"
git config --global user.name "vasanth064"

#config GRUB
cp -vr ./Configs/dracula /usr/share/grub/themes/
cp -vr ./Configs/grub /etc/default/
sudo update-grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
./user.sh
echo '----------------Installation Complete----------------'
read
./postInstall.sh

sudo reboot
