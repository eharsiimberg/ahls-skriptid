# phpmyadmin paigaldusskript
#
PMA=$(apt list --installed 2>/dev/null | grep -c phpmyadmin)
# kui PMA võrdub 0-ga
if [ $PMA -eq 0 ]; then
	# väljstame teate paigaldusest
	# paigaldame teenuse
	echo "Paigaldame phpmyadmin ja lisad"
	apt install phpmyadmin
	echo "phpmyadmin on paigaldatud"
# kui PMA võrdub 1-ga
elif [ $PMA -eq 1 ]; then
	# väljastab teate phpmyadmini olemasolust
	echo "phpmyadmin on juba paigaltatud"
	# kontroll
	apt list --installed 2>/dev/null | grep phpmyadmin
fi
# END OF SCRIPT
