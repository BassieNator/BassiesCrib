I=0

while [ $I = 0 ]
do

echo "Welke webserver wilt u gebruiken Nginx of Apache2?"
echo "1= Apache2 2= Nginx"
read Keuze

if [ $Keuze = "1" ]
then
sudo zypper --non-interactive --no-gpg-checks --quiet install --auto-agree-with-licenses apache2

elif [ $Keuze = "2" ]
then
sudo zypper --non-interactive --no-gpg-checks --quiet install --auto-agree-with-licenses nginx

fi

echo "Nextcloud word geïnstalleerd"
sudo zypper --non-interactive --no-gpg-checks --quiet install --auto-agree-with-licenses nextcloud

echo "fail2ban word geïnstalleerd"
sudo zypper --non-interactive --no-gpg-checks --quiet install --auto-agree-with-licenses fail2ban


    read -p "Wilt u het script opnieuw laden [Y/n]?" yn
    case $yn in
        [Yy]* ) I=0;;
        [Nn]* ) I=$(( I+1 ));;
        * ) echo "Maak een keuze.";;
    esac
done 
