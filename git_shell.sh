#!/bin/bash
# Scritp By lucas290as
# Author = Lucas de Souza Santos
# Github /lucas290as

# Script for create commits for github
# Coming soon for Windows

# MAIN

main() {
    clear;
    git add .
    clear;
    echo -n "Type the commit: ";
    read commit;
    if [ $commit == "" ]; then
        clear;
        echo "Commit message cannot be empty";
        clear;
        main 
    fi
    clear;
    git commit -m "$commit";
    clear;
    echo "\t COMMITING ..."
    sleep 1;
    clear
    echo "\\t COMMITED!";
    clear;
    echo "\t SENDING ..."
    clear;
    git push;
    clear;
    echo "\t EVERYTHING IS OK!"
    clear;
    echo "\t EXITING THE SCRIPT ...";
    sleep 1;
    clear
}

main 