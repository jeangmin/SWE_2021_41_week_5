#!/bin/bash

FILES_DIR="./files"

for file in "${FILES_DIR}"/*.txt; do
  name=$(basename "$file")

  first_word="${name:0:1}"
  lower_word="${first_word,,}" 

  move_ready="${lower_word}"

  if [ -d "$move_ready" ]; then
    mv "$file" "$move_ready/"
  fi
done