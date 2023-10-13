#!/bin/bash
si=$1
ei=$2
if [[ -z $si ]] || [[ -z $ei ]]; then
  echo "Please provide the index range"
  exit
else
  for ((i=si; i<=ei; i++))
    do
      echo "$i,$((RANDOM%1000))" >> inputFile
  done
fi  