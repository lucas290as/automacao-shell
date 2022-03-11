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
    echo -e "\t COMMITING ...";
    sleep 1;
    clear
    echo -e "\t COMMITED!";
    sleep 2;
    clear;
    echo -e "\t SENDING ...";
    clear;
    git push;
    clear;
    echo -e "\t EVERYTHING IS OK!";
    clear;
    echo -e "\t EXITING THE SCRIPT ...";
    sleep 1;
    clear
}

main 