echo '--------------------Post Install---------------------'
echo 'y/n) Setup Scripts at startup'
echo '-----------------------------------------------------'
read script
if [ $script = 'y' ]
then
    echo '---------------Startup Scripts Setup-----------------'
    echo '1) Open a new terminal'
    echo '2) Type $ crontab -e'
    echo '3) Copy the below lines and add it in nano'
    echo ''
    echo '@reboot /home/vasanth/Scripts/organizeDownloads.sh'
    echo ''
    echo '4) Save and press ENTER to continue'
    read enter
fi
echo '-----------------------------------------------------'
echo 'y/n) Setup Extension Sync'
read es
echo '-----------------------------------------------------'
if [ $es = 'y' ]
then
    echo '------------------Extension Sync---------------------'
    echo '1) Download Extensions Sync from'
    echo 'https://extensions.gnome.org/'
    read enter
    echo '2) Snippent ID'
    echo '2329526'
    read enter
    echo '3) User Token'
    echo 'glpat-zkcX3TNkuSSbeUZykxF9'
    read enter
    echo '-----------------------------------------------------'
fi
