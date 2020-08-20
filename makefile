all: README.md

README.md:
	echo "Guessing Game" > README.md
	echo -n "README.md created at : " >> README.md
	date >> README.md
	echo -n "\n Number of lines in guessinggame.sh: " >> README.md
	wc -l < ./guessinggame.sh >> README.md

