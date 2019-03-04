all: README.md

README.md: 
	touch README.md
	echo "Guessing Game" > README.md
	date >> README.md
	wc -l < guessinggame.sh | bc >> README.md

clean: 
	rm README.md