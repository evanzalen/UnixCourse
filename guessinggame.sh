#!/bin/bash

get_file_count() {
  echo $(ls -1 | wc -l)
}

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

file_count=$(get_file_count)
guess=-1

while [[ $guess -ne $file_count ]]
do
  read -p "Enter your guess: " guess
  if [[ $guess -lt $file_count ]]; then
    echo "Too low!"
  elif [[ $guess -gt $file_count ]]; then
    echo "Too high!"
  else
    echo "Congratulations! You guessed correctly."
  fi
done