#mysql paigaldamise skript
#
#
MYSQL=$(dpkg-query -W -f='{Status}' mysql-server 2>/dev/null | grep -c 'ok installed')
# kui võrdub 0-ga
if [ $MYSQL -eq 0 ]; then
	# paigaldame teenuse
	echo "Paigaldame mysql ja lisad"
	apt install gnupg
	wget https://dev.mysql.com/get/mysql-apt-config_0.8.22-1_all.deb
	dpkg -i mysql-apt-config*
	apt update
	apt install mysql-server
	rm -rf mysql-apt-config_0.8.22-1_all.deb
	echo "mysql on paigaldatud"
	# kontroll
	systemctl status mysql
# kui võrdub 1-ga
elif [ $MYSQL -eq 1 ]; then
	# siis teenus juba paigaldatud
	echo "mysql-server on juba olemas"
	# kontroll
	systemctl status mysql
fi
# End of script
