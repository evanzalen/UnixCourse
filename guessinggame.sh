#!/bin/bash
get_file_count() {
  local count=$(ls -1 | wc -l)
  echo $count
}
echo "Welcome to the Guessing Game!"
echo "Let's see how many files are in your current directory.."
echo "Try to guess the number!"
file_count=$(get_file_count)
guess=-1
attempts=0
echo "Initializing guessing loop..."
while [[ $guess -ne $file_count ]]; do
  read -p "Enter your guess: " guess
  attempts=$((attempts + 1))
  if [[ $guess -lt $file_count ]]; then
    echo "Too low!"
  elif [[ $guess -gt $file_count ]]; then
    echo "Too high!"
  else
    echo "Checking..."
    echo "Congratulations! You guessed correctly."
    echo "It took you $attempts attempt(s)."
  fi
done
echo "Game over."
