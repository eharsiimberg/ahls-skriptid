#apache paigaldusskript
#
APACHE2=$(dpkg-query -W -f='${Status}' apache2 2>/dev/null | grep -c 'ok installed')
# Kui apache2 pole olemas
if [ $APACHE2 -eq 0 ]; then
	echo "Paigaldame apache2"
	apt install apache2
	echo "Apache on paigaldatud"
# Kui apache2 on olemas
elif [ $APACHE2 -eq 1 ]; then
	echo "apache2 on juba olemas"
	systemctl start apache2
	systemctl status apache2
fi
# END OF SCRIPT
