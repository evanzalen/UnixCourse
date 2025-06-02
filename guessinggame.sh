#!/bin/bash

# Function to count files in the current directory
get_file_count() {
  local count=$(ls -1 | wc -l)
  echo "$count"
}

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"
echo "Try to guess the number!"

# Get actual file count
file_count=$(get_file_count)

# Initialize variables
guess=-1
attempts=0

# Loop until correct guess
while [[ "$guess" -ne "$file_count" ]]; do
  read -p "Enter your guess: " guess
  attempts=$((attempts + 1))

  if [[ "$guess" -lt "$file_count" ]]; then
    echo "Too low!"
  elif [[ "$guess" -gt "$file_count" ]]; then
    echo "Too high!"
  else
    echo "Congratulations! You guessed correctly."
    echo "It took you $attempts attempt(s)."
  fi
done

echo "Game over."
