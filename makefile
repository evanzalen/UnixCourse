all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "Generated on: $$(date)" >> README.md
	echo "" >> README.md
	echo "The guessinggame.sh script has $$(wc -l < guessinggame.sh) lines of code." >> README.md
