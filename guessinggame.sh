#!/usr/bin/env bash

function guessingGame(){
    fileCount=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter the file count guess:"
        read  userInput
        if [ $userInput -lt $fileCount ]
        then
            echo "You guessed LESS than true count !"
        elif [ $userInput -gt $fileCount ]
        then
            echo "You guessed MORE than true count !"
        else
            echo "Great ! You Guessed File count Correct !"
        break;
        fi
    done
}
echo "GUESSING GAME: Guess the files in current directory!"
guessingGame
