#clean unwanted programs
sudo dnf remove aisleriot gnome-calendar gnome-mahjongg gnome-mines rhythmbox gnome-robots shotwell gnome-sudoku gnome-games totem -y
sudo snap remove firefox
sudo dnf autoremove -y

echo '--------------------Ubuntu Vortex--------------------'
echo '1) Full Softwares'
echo '2) Minimum Softwares'
echo '-----------------------------------------------------'

read minMax

if [ $minMax = '1' ]
then
    echo '-------------Full Software Installation--------------'
     ./softwares.sh
elif [ $minMax = '2' ]
then
    echo '-------------Mini Software Installation--------------'
    ./softwaresMin.sh
fi
