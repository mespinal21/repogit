datetime=$(date)

README.md: guessinggame.sh
	touch README.md
	echo "# GUESSINGGAME AND README.MD" >> README.md
	echo "- Date and Time:" >> README.md
	date  >> README.md
	echo "- Lines of code:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
