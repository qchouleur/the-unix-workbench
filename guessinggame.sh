#!/usr/bin/env bash

function fc { 
    ls -1 | wc -l
}

function guessing { 
    local file_number=$(fc)
    echo "how many files are in the current directory?"
    read input

    while [ "$input" -ne "$file_number" ]
    do
        if [ $input -gt $file_number ]
        then
            echo "Your guess is too high."
        else
            echo "You guess is too low."
        fi

        echo "Guess again."
        read input
    done

    echo "Congratulation, there are $input files."
}

guessing