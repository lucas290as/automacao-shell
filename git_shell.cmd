#!/bin/bash/sh
# Scritp By lucas290as
# Author = Lucas de Souza Santos
# Github /lucas290as

# Script for create commits for github

# MAIN

main() {
    clear;
    git add .
    clear;
    echo -n "Type the commit: ";
    read commit;
    clear;
    git commit -m "$commit";
    clear;
    echo "\t COMMITING ..."
    sleep 1;
    clear
    echo "\t COMMITED!";
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