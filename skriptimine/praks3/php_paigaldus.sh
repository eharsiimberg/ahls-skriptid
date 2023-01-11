# php paigaldusskript
#
PHP=$(dpkg-query -W -f='${Status}' php 2>/dev/null | grep -c 'ok installed')
# Kui võrdub 0-ga
if [ $PHP -eq 0 ]; then
	echo "Paigaldame PHP ja lisad"
	apt install php libapache2-mod-php php-mysql
	echo "PHP on paigaldatud"
# kui võrdub 1-ga
elif [ $PHP -eq 1 ]; then
	echo "PHP on juba olemas"
	# kontrollime olemasolevat PHP
	which php
fi
# End of script
